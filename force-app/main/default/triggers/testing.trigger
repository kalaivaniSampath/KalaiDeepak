trigger testing on Account (before Delete) {
    for(Account a:trigger.new){   
    a.description='Description beforce update'+userInfo.getUserName();
    system.debug('userinfo' +a);
    }
            
}