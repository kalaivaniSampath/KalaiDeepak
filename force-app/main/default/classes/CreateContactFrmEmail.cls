/**
 * Email services are automated processes that use Apex classes
 * to process the contents, headers, and attachments of inbound
 * email.
 */
global class CreateContactFrmEmail implements Messaging.InboundEmailHandler {

    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope)
   {
        Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();
        String subToCompare = 'Create Contact';
		
       system.debug('***'+email.subject);
       if(email.subject.equalsIgnoreCase(subToCompare))
        {
             
            Contact c = new Contact();
            c.Email=email.fromAddress;
            
            // capture phone number and city also from incoming email.
            // Splits each line by the terminating newline character  
            // and looks for the position of the phone number and city 
            String[] emailBody = email.plainTextBody.split('\n', 0);
            
            system.debug('***'+emailBody);
            
             system.debug('&&&'+emailBody[0].substring(0));
            c.LastName=emailBody[0].substring(0);
            
            system.debug('%%%phone'+emailBody[1].substring(0));
            c.Phone = emailBody[1].substring(0);
            
            system.debug('@@@@title'+emailBody[2].substring(0));
            c.Title = emailBody[2].substring(0);
                       
            insert c;
            
                // Save attachments, if any
            if (email.textAttachments != null)
            {
            for(Messaging.Inboundemail.TextAttachment tAttachment : email.textAttachments)
            {
            Attachment attachment = new Attachment();

            attachment.Name = tAttachment.fileName;
            attachment.Body = Blob.valueOf(tAttachment.body);
            attachment.ParentId = c.Id;
            insert attachment;
            }
            
            }

            //Save any Binary Attachment
            
            if (email.binaryAttachments != null)
            {
            for(Messaging.Inboundemail.BinaryAttachment bAttachment : email.binaryAttachments) {
            Attachment attachment = new Attachment();

            attachment.Name = bAttachment.fileName;
            attachment.Body = bAttachment.body;
            attachment.ParentId = c.Id;
            insert attachment;
            }
           } 
        }

        result.success = true;
        return result;
             
   }
}