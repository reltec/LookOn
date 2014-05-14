// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.PersonBlacklist;
import com.reltecsoft.lookon.domain.PersonBlacklistPK;
import com.reltecsoft.lookon.service.PersonBlacklistService;
import java.util.List;

privileged aspect PersonBlacklistService_Roo_Service {
    
    public abstract long PersonBlacklistService.countAllPersonBlacklists();    
    public abstract void PersonBlacklistService.deletePersonBlacklist(PersonBlacklist personBlacklist);    
    public abstract PersonBlacklist PersonBlacklistService.findPersonBlacklist(PersonBlacklistPK id);    
    public abstract List<PersonBlacklist> PersonBlacklistService.findAllPersonBlacklists();    
    public abstract List<PersonBlacklist> PersonBlacklistService.findPersonBlacklistEntries(int firstResult, int maxResults);    
    public abstract void PersonBlacklistService.savePersonBlacklist(PersonBlacklist personBlacklist);    
    public abstract PersonBlacklist PersonBlacklistService.updatePersonBlacklist(PersonBlacklist personBlacklist);    
}
