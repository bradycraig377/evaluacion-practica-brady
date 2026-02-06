public class ProContactoEmailJob implements Queueable, Database.AllowsCallouts {
    private List<Id> contactIds;

    public ProContactoEmailJob(List<Id> contactIds) {
        this.contactIds = contactIds;
    }

    public void execute(QueueableContext context) {
        List<Contact> contacts = [
            SELECT Id, Email, idprocontacto__c
            FROM Contact
            WHERE Id IN :contactIds
        ];

        List<Contact> updates = new List<Contact>();

        for (Contact c : contacts) {
            if (String.isBlank(c.idprocontacto__c)) continue;

            String email = ProContactoService.getEmailFromFirebase(c.idprocontacto__c);

            if (String.isNotBlank(email) && c.Email != email) {
                updates.add(new Contact(Id = c.Id, Email = email));
            }
        }

        if (!updates.isEmpty()) {
            update updates;
        }
    }
}