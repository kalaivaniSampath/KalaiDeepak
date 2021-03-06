//Generated by wsdl2apex

public class AsyncCon_OpportunitiesCLS {
    public class pub_inseroptmtdResponse_elementFuture extends System.WebServiceCalloutFuture {
        public void getValue() {
            System.WebServiceCallout.endInvoke(this);
        }
    }
    public class AsyncPub_Opportunitycls {
        public String endpoint_x = 'https://eu6.salesforce.com/services/Soap/class/Pub_Opportunitycls';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        public Con_OpportunitiesCLS.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        public Con_OpportunitiesCLS.DebuggingInfo_element DebuggingInfo;
        public Con_OpportunitiesCLS.DebuggingHeader_element DebuggingHeader;
        public Con_OpportunitiesCLS.SessionHeader_element SessionHeader;
        public Con_OpportunitiesCLS.CallOptions_element CallOptions;
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/Pub_Opportunitycls';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/Pub_Opportunitycls';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/Pub_Opportunitycls';
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/Pub_Opportunitycls';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/Pub_Opportunitycls';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/Pub_Opportunitycls', 'Con_OpportunitiesCLS'};
        public AsyncCon_OpportunitiesCLS.pub_inseroptmtdResponse_elementFuture beginPub_inseroptmtd(System.Continuation continuation,String Name,String Description,String Account) {
            Con_OpportunitiesCLS.pub_inseroptmtd_element request_x = new Con_OpportunitiesCLS.pub_inseroptmtd_element();
            request_x.Name = Name;
            request_x.Description = Description;
            request_x.Account = Account;
            return (AsyncCon_OpportunitiesCLS.pub_inseroptmtdResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncCon_OpportunitiesCLS.pub_inseroptmtdResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/Pub_Opportunitycls',
              'pub_inseroptmtd',
              'http://soap.sforce.com/schemas/class/Pub_Opportunitycls',
              'pub_inseroptmtdResponse',
              'Con_OpportunitiesCLS.pub_inseroptmtdResponse_element'}
            );
        }
    }
}