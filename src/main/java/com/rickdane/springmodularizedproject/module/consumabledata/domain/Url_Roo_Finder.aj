// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rickdane.springmodularizedproject.module.consumabledata.domain;

import com.rickdane.springmodularizedproject.module.consumabledata.domain.Campaign;
import com.rickdane.springmodularizedproject.module.consumabledata.domain.Url;
import com.rickdane.springmodularizedproject.module.consumabledata.domain.UrlStatus;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Url_Roo_Finder {
    
    public static TypedQuery<Url> Url.findUrlsByUrlEqualsAndCampaign(String url, Campaign campaign) {
        if (url == null || url.length() == 0) throw new IllegalArgumentException("The url argument is required");
        if (campaign == null) throw new IllegalArgumentException("The campaign argument is required");
        EntityManager em = Url.entityManager();
        TypedQuery<Url> q = em.createQuery("SELECT o FROM Url AS o WHERE o.url = :url  AND o.campaign = :campaign", Url.class);
        q.setParameter("url", url);
        q.setParameter("campaign", campaign);
        return q;
    }
    
    public static TypedQuery<Url> Url.findUrlsByUrlStatusAndCampaign(UrlStatus urlStatus, Campaign campaign) {
        if (urlStatus == null) throw new IllegalArgumentException("The urlStatus argument is required");
        if (campaign == null) throw new IllegalArgumentException("The campaign argument is required");
        EntityManager em = Url.entityManager();
        TypedQuery<Url> q = em.createQuery("SELECT o FROM Url AS o WHERE o.urlStatus = :urlStatus AND o.campaign = :campaign", Url.class);
        q.setParameter("urlStatus", urlStatus);
        q.setParameter("campaign", campaign);
        return q;
    }
    
}
