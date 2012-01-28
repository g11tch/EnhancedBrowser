// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rickdane.springmodularizedproject.module.webgatherer.domain;

import com.rickdane.springmodularizedproject.module.webgatherer.domain.Rawscrapeddata;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Rawscrapeddata_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Rawscrapeddata.entityManager;
    
    public static final EntityManager Rawscrapeddata.entityManager() {
        EntityManager em = new Rawscrapeddata().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Rawscrapeddata.countRawscrapeddatas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Rawscrapeddata o", Long.class).getSingleResult();
    }
    
    public static List<Rawscrapeddata> Rawscrapeddata.findAllRawscrapeddatas() {
        return entityManager().createQuery("SELECT o FROM Rawscrapeddata o", Rawscrapeddata.class).getResultList();
    }
    
    public static Rawscrapeddata Rawscrapeddata.findRawscrapeddata(Long id) {
        if (id == null) return null;
        return entityManager().find(Rawscrapeddata.class, id);
    }
    
    public static List<Rawscrapeddata> Rawscrapeddata.findRawscrapeddataEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Rawscrapeddata o", Rawscrapeddata.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Rawscrapeddata.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Rawscrapeddata.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Rawscrapeddata attached = Rawscrapeddata.findRawscrapeddata(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Rawscrapeddata.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Rawscrapeddata.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Rawscrapeddata Rawscrapeddata.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Rawscrapeddata merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
