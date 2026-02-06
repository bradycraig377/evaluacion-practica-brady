trigger ProContactoTrigger on Contact (after insert, after update) {
    List<Id> ids = new List<Id>();

    for (Contact c : Trigger.new) {
        if (!String.isBlank(c.idprocontacto__c)) {
            ids.add(c.Id);
        }
    }

    if (!ids.isEmpty()) {
        System.enqueueJob(new ProContactoEmailJob(ids));
    }
}