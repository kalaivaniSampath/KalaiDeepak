({
	createlead : function(component, event, helper) {
		
         var leadcomp = component.get("v.objnewlead");
          var action = component.get("c.createRecord");
        console.log('leadcomp8888'+leadcomp)
         action.setParams({"leadinfoinsert" : leadcomp});
            action.setCallback(this,function(a){
            //get the response state
            var state = a.getState();	
              if(state == "SUCCESS"){
                 var name = a.getReturnValue();

                alert("Record is Created Successfully"+name);
            } else if(state == "ERROR"){
                alert('Error in calling server side action');
            }
        });
        
		 $A.enqueueAction(action);        
	}
})