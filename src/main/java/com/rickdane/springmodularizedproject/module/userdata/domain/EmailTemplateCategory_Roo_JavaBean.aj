// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rickdane.springmodularizedproject.module.userdata.domain;

import com.rickdane.springmodularizedproject.domain.User;
import com.rickdane.springmodularizedproject.module.userdata.domain.EmailTemplateCategory;
import com.rickdane.springmodularizedproject.module.userdata.domain.EmailTemplateStatus;
import java.util.Set;

privileged aspect EmailTemplateCategory_Roo_JavaBean {
    
    public String EmailTemplateCategory.getName() {
        return this.name;
    }
    
    public void EmailTemplateCategory.setName(String name) {
        this.name = name;
    }
    
    public EmailTemplateStatus EmailTemplateCategory.getEmailTemplateStatus() {
        return this.emailTemplateStatus;
    }
    
    public void EmailTemplateCategory.setEmailTemplateStatus(EmailTemplateStatus emailTemplateStatus) {
        this.emailTemplateStatus = emailTemplateStatus;
    }
    
    public Set<User> EmailTemplateCategory.getUsers() {
        return this.users;
    }
    
    public void EmailTemplateCategory.setUsers(Set<User> users) {
        this.users = users;
    }
    
}
