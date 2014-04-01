// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.CompanyStatus;
import com.reltecsoft.lookon.service.CompanyStatusService;
import java.util.List;

privileged aspect CompanyStatusService_Roo_Service {
    
    public abstract long CompanyStatusService.countAllCompanyStatuses();    
    public abstract void CompanyStatusService.deleteCompanyStatus(CompanyStatus companyStatus);    
    public abstract CompanyStatus CompanyStatusService.findCompanyStatus(Long id);    
    public abstract List<CompanyStatus> CompanyStatusService.findAllCompanyStatuses();    
    public abstract List<CompanyStatus> CompanyStatusService.findCompanyStatusEntries(int firstResult, int maxResults);    
    public abstract void CompanyStatusService.saveCompanyStatus(CompanyStatus companyStatus);    
    public abstract CompanyStatus CompanyStatusService.updateCompanyStatus(CompanyStatus companyStatus);    
}
