public with sharing class ProContactoService {

    public class FirebaseContact {
        public String email;
        public String name;
    }

    public static String getEmailFromFirebase(String idProContacto) {
        if (String.isBlank(idProContacto)) return null;

        String endpoint =
            'https://procontacto-reclutamiento-default-rtdb.firebaseio.com/contacts/' 
            + idProContacto + '.json';

        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod('GET');
        req.setTimeout(120000);

        HttpResponse res = http.send(req);

        if (res.getStatusCode() == 200 &&
            String.isNotBlank(res.getBody()) &&
            res.getBody() != 'null') {

            FirebaseContact data =
                (FirebaseContact) JSON.deserialize(res.getBody(), FirebaseContact.class);

            return (data != null) ? data.email : null;
        }

        return null;
    }
}