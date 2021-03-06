// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rickdane.springmodularizedproject.module.consumabledata.domain;

import com.rickdane.springmodularizedproject.module.consumabledata.domain.UrlBlockPattern;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UrlBlockPattern_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager UrlBlockPattern.entityManager;
    
    public static final EntityManager UrlBlockPattern.entityManager() {
        EntityManager em = new UrlBlockPattern().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long UrlBlockPattern.countUrlBlockPatterns() {
        return entityManager().createQuery("SELECT COUNT(o) FROM UrlBlockPattern o", Long.class).getSingleResult();
    }
    
    public static List<UrlBlockPattern> UrlBlockPattern.findAllUrlBlockPatterns() {
        return entityManager().createQuery("SELECT o FROM UrlBlockPattern o", UrlBlockPattern.class).getResultList();
    }
    
    public static UrlBlockPattern UrlBlockPattern.findUrlBlockPattern(Long id) {
        if (id == null) return null;
        return entityManager().find(UrlBlockPattern.class, id);
    }
    
    public static List<UrlBlockPattern> UrlBlockPattern.findUrlBlockPatternEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM UrlBlockPattern o", UrlBlockPattern.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void UrlBlockPattern.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void UrlBlockPattern.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            UrlBlockPattern attached = UrlBlockPattern.findUrlBlockPattern(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void UrlBlockPattern.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void UrlBlockPattern.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public UrlBlockPattern UrlBlockPattern.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        UrlBlockPattern merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
