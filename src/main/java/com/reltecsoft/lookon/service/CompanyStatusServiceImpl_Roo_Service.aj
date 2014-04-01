// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.CompanyStatus;
import com.reltecsoft.lookon.repository.CompanyStatusRepository;
import com.reltecsoft.lookon.service.CompanyStatusServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CompanyStatusServiceImpl_Roo_Service {
    
    declare @type: CompanyStatusServiceImpl: @Service;
    
    declare @type: CompanyStatusServiceImpl: @Transactional;
    
    @Autowired
    CompanyStatusRepository CompanyStatusServiceImpl.companyStatusRepository;
    
    public long CompanyStatusServiceImpl.countAllCompanyStatuses() {
        return companyStatusRepository.count();
    }
    
    public void CompanyStatusServiceImpl.deleteCompanyStatus(CompanyStatus companyStatus) {
        companyStatusRepository.delete(companyStatus);
    }
    
    public CompanyStatus CompanyStatusServiceImpl.findCompanyStatus(Long id) {
        return companyStatusRepository.findOne(id);
    }
    
    public List<CompanyStatus> CompanyStatusServiceImpl.findAllCompanyStatuses() {
        return companyStatusRepository.findAll();
    }
    
    public List<CompanyStatus> CompanyStatusServiceImpl.findCompanyStatusEntries(int firstResult, int maxResults) {
        return companyStatusRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void CompanyStatusServiceImpl.saveCompanyStatus(CompanyStatus companyStatus) {
        companyStatusRepository.save(companyStatus);
    }
    
    public CompanyStatus CompanyStatusServiceImpl.updateCompanyStatus(CompanyStatus companyStatus) {
        return companyStatusRepository.save(companyStatus);
    }
    
}