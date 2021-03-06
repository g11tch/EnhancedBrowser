// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rickdane.springmodularizedproject.module.consumabledata.web;

import com.rickdane.springmodularizedproject.module.consumabledata.domain.Campaign;
import com.rickdane.springmodularizedproject.module.consumabledata.domain.CampaignEmailScrapeOptions;
import com.rickdane.springmodularizedproject.module.consumabledata.web.CampaignController;
import java.util.List;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

privileged aspect CampaignController_Roo_Controller_Json {
    
    @RequestMapping(value = "/{id}", headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> CampaignController.showJson(@PathVariable("id") Long id) {
        Campaign campaign = Campaign.findCampaign(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (campaign == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(campaign.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> CampaignController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<Campaign> result = Campaign.findAllCampaigns();
        return new ResponseEntity<String>(Campaign.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> CampaignController.createFromJson(@RequestBody String json) {
        Campaign campaign = Campaign.fromJsonToCampaign(json);
        campaign.persist();
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> CampaignController.createFromJsonArray(@RequestBody String json) {
        for (Campaign campaign: Campaign.fromJsonArrayToCampaigns(json)) {
            campaign.persist();
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> CampaignController.updateFromJson(@RequestBody String json) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        Campaign campaign = Campaign.fromJsonToCampaign(json);
        if (campaign.merge() == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> CampaignController.updateFromJsonArray(@RequestBody String json) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        for (Campaign campaign: Campaign.fromJsonArrayToCampaigns(json)) {
            if (campaign.merge() == null) {
                return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
            }
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> CampaignController.deleteFromJson(@PathVariable("id") Long id) {
        Campaign campaign = Campaign.findCampaign(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (campaign == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        campaign.remove();
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(params = "find=ByCampaignEmailScrapeOptions", headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> CampaignController.jsonFindCampaignsByCampaignEmailScrapeOptions(@RequestParam("campaignEmailScrapeOptions") CampaignEmailScrapeOptions campaignEmailScrapeOptions) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        return new ResponseEntity<String>(Campaign.toJsonArray(Campaign.findCampaignsByCampaignEmailScrapeOptions(campaignEmailScrapeOptions).getResultList()), headers, HttpStatus.OK);
    }
    
    @RequestMapping(params = "find=ByNameEquals", headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> CampaignController.jsonFindCampaignsByNameEquals(@RequestParam("name") String name) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        return new ResponseEntity<String>(Campaign.toJsonArray(Campaign.findCampaignsByNameEquals(name).getResultList()), headers, HttpStatus.OK);
    }
    
}
