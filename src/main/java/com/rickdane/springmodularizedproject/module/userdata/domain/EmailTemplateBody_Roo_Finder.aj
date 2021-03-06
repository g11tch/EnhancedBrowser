// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rickdane.springmodularizedproject.module.userdata.domain;

import com.rickdane.springmodularizedproject.module.userdata.domain.EmailTemplateBody;
import com.rickdane.springmodularizedproject.module.userdata.domain.EmailTemplateCategory;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect EmailTemplateBody_Roo_Finder {
    
    public static TypedQuery<EmailTemplateBody> EmailTemplateBody.findEmailTemplateBodysByEmailTemplateCategory(EmailTemplateCategory emailTemplateCategory) {
        if (emailTemplateCategory == null) throw new IllegalArgumentException("The emailTemplateCategory argument is required");
        EntityManager em = EmailTemplateBody.entityManager();
        TypedQuery<EmailTemplateBody> q = em.createQuery("SELECT o FROM EmailTemplateBody AS o WHERE o.emailTemplateCategory = :emailTemplateCategory", EmailTemplateBody.class);
        q.setParameter("emailTemplateCategory", emailTemplateCategory);
        return q;
    }
    
}
