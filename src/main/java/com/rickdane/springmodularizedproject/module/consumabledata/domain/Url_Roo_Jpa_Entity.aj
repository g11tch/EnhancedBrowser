// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rickdane.springmodularizedproject.module.consumabledata.domain;

import com.rickdane.springmodularizedproject.module.consumabledata.domain.Url;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Url_Roo_Jpa_Entity {
    
    declare @type: Url: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Url.id;
    
    @Version
    @Column(name = "version")
    private Integer Url.version;
    
    public Long Url.getId() {
        return this.id;
    }
    
    public void Url.setId(Long id) {
        this.id = id;
    }
    
    public Integer Url.getVersion() {
        return this.version;
    }
    
    public void Url.setVersion(Integer version) {
        this.version = version;
    }
    
}
