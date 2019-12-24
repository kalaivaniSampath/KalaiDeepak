trigger partnerwsdl on Opportunity (after insert) {
    for(Opportunity opp:trigger.new){
    Con_Opt_Invoke_Class.Con_Opt_Invoke_Ins_Mtd(opp.Id);
    }
    }