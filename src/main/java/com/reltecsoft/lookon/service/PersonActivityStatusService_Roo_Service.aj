// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.DtPersonActivityStatus;
import com.reltecsoft.lookon.service.PersonActivityStatusService;
import java.util.List;

privileged aspect PersonActivityStatusService_Roo_Service {
    
    public abstract long PersonActivityStatusService.countAllDtPersonActivityStatuses();    
    public abstract void PersonActivityStatusService.deleteDtPersonActivityStatus(DtPersonActivityStatus dtPersonActivityStatus);    
    public abstract DtPersonActivityStatus PersonActivityStatusService.findDtPersonActivityStatus(Integer id);    
    public abstract List<DtPersonActivityStatus> PersonActivityStatusService.findAllDtPersonActivityStatuses();    
    public abstract List<DtPersonActivityStatus> PersonActivityStatusService.findDtPersonActivityStatusEntries(int firstResult, int maxResults);    
    public abstract void PersonActivityStatusService.saveDtPersonActivityStatus(DtPersonActivityStatus dtPersonActivityStatus);    
    public abstract DtPersonActivityStatus PersonActivityStatusService.updateDtPersonActivityStatus(DtPersonActivityStatus dtPersonActivityStatus);    
}