// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rickdane.springmodularizedproject.module.consumabledata.domain;

import com.rickdane.springmodularizedproject.module.consumabledata.domain.Campaign;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Campaign_Roo_Json {
    
    public String Campaign.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public static Campaign Campaign.fromJsonToCampaign(String json) {
        return new JSONDeserializer<Campaign>().use(null, Campaign.class).deserialize(json);
    }
    
    public static String Campaign.toJsonArray(Collection<Campaign> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<Campaign> Campaign.fromJsonArrayToCampaigns(String json) {
        return new JSONDeserializer<List<Campaign>>().use(null, ArrayList.class).use("values", Campaign.class).deserialize(json);
    }
    
}
