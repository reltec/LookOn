// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.DtCompanyStatus;
import com.reltecsoft.lookon.service.CompanyStatusService;
import java.util.List;

privileged aspect CompanyStatusService_Roo_Service {
    
    public abstract long CompanyStatusService.countAllDtCompanyStatuses();    
    public abstract void CompanyStatusService.deleteDtCompanyStatus(DtCompanyStatus dtCompanyStatus);    
    public abstract DtCompanyStatus CompanyStatusService.findDtCompanyStatus(Integer id);    
    public abstract List<DtCompanyStatus> CompanyStatusService.findAllDtCompanyStatuses();    
    public abstract List<DtCompanyStatus> CompanyStatusService.findDtCompanyStatusEntries(int firstResult, int maxResults);    
    public abstract void CompanyStatusService.saveDtCompanyStatus(DtCompanyStatus dtCompanyStatus);    
    public abstract DtCompanyStatus CompanyStatusService.updateDtCompanyStatus(DtCompanyStatus dtCompanyStatus);    
}
