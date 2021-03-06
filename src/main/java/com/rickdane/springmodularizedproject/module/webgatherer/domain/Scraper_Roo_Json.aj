// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rickdane.springmodularizedproject.module.webgatherer.domain;

import com.rickdane.springmodularizedproject.module.webgatherer.domain.Scraper;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Scraper_Roo_Json {
    
    public String Scraper.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public static Scraper Scraper.fromJsonToScraper(String json) {
        return new JSONDeserializer<Scraper>().use(null, Scraper.class).deserialize(json);
    }
    
    public static String Scraper.toJsonArray(Collection<Scraper> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<Scraper> Scraper.fromJsonArrayToScrapers(String json) {
        return new JSONDeserializer<List<Scraper>>().use(null, ArrayList.class).use("values", Scraper.class).deserialize(json);
    }
    
}
