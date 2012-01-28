// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rickdane.springmodularizedproject.module.consumabledata.domain;

import com.rickdane.springmodularizedproject.module.consumabledata.domain.Campaign;
import com.rickdane.springmodularizedproject.module.consumabledata.domain.CampaignEmailScrapeOptions;
import com.rickdane.springmodularizedproject.module.consumabledata.domain.CampaignType;
import com.rickdane.springmodularizedproject.module.consumabledata.domain.Datarecord;
import com.rickdane.springmodularizedproject.module.consumabledata.domain.UrlBlockPattern;
import com.rickdane.springmodularizedproject.module.userdata.domain.EmailTemplateCategory;
import java.util.Set;

privileged aspect Campaign_Roo_JavaBean {
    
    public String Campaign.getName() {
        return this.name;
    }
    
    public void Campaign.setName(String name) {
        this.name = name;
    }
    
    public CampaignEmailScrapeOptions Campaign.getCampaignEmailScrapeOptions() {
        return this.campaignEmailScrapeOptions;
    }
    
    public void Campaign.setCampaignEmailScrapeOptions(CampaignEmailScrapeOptions campaignEmailScrapeOptions) {
        this.campaignEmailScrapeOptions = campaignEmailScrapeOptions;
    }
    
    public CampaignType Campaign.getCampaignType() {
        return this.campaignType;
    }
    
    public void Campaign.setCampaignType(CampaignType campaignType) {
        this.campaignType = campaignType;
    }
    
    public UrlBlockPattern Campaign.getCampaign() {
        return this.campaign;
    }
    
    public void Campaign.setCampaign(UrlBlockPattern campaign) {
        this.campaign = campaign;
    }
    
    public Set<Datarecord> Campaign.getDatarecords() {
        return this.datarecords;
    }
    
    public void Campaign.setDatarecords(Set<Datarecord> datarecords) {
        this.datarecords = datarecords;
    }
    
    public EmailTemplateCategory Campaign.getEmailTemplateCategories() {
        return this.emailTemplateCategories;
    }
    
    public void Campaign.setEmailTemplateCategories(EmailTemplateCategory emailTemplateCategories) {
        this.emailTemplateCategories = emailTemplateCategories;
    }
    
}
