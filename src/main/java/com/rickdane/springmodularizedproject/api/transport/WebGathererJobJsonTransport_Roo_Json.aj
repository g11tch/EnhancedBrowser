// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rickdane.springmodularizedproject.api.transport;

import com.rickdane.springmodularizedproject.api.transport.WebGathererJobJsonTransport;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect WebGathererJobJsonTransport_Roo_Json {
    
    public String WebGathererJobJsonTransport.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static WebGathererJobJsonTransport WebGathererJobJsonTransport.fromJsonToWebGathererJobJsonTransport(String json) {
        return new JSONDeserializer<WebGathererJobJsonTransport>().use(null, WebGathererJobJsonTransport.class).deserialize(json);
    }
    
    public static String WebGathererJobJsonTransport.toJsonArray(Collection<WebGathererJobJsonTransport> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<WebGathererJobJsonTransport> WebGathererJobJsonTransport.fromJsonArrayToWebGathererJobJsonTransports(String json) {
        return new JSONDeserializer<List<WebGathererJobJsonTransport>>().use(null, ArrayList.class).use("values", WebGathererJobJsonTransport.class).deserialize(json);
    }
    
}
