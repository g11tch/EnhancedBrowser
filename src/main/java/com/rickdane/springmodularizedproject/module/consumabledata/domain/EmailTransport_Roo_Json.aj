// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rickdane.springmodularizedproject.module.consumabledata.domain;

import com.rickdane.springmodularizedproject.module.consumabledata.domain.EmailTransport;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect EmailTransport_Roo_Json {
    
    public String EmailTransport.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public static EmailTransport EmailTransport.fromJsonToEmailTransport(String json) {
        return new JSONDeserializer<EmailTransport>().use(null, EmailTransport.class).deserialize(json);
    }
    
    public static String EmailTransport.toJsonArray(Collection<EmailTransport> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<EmailTransport> EmailTransport.fromJsonArrayToEmailTransports(String json) {
        return new JSONDeserializer<List<EmailTransport>>().use(null, ArrayList.class).use("values", EmailTransport.class).deserialize(json);
    }
    
}
