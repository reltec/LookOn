// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Company;
import com.reltecsoft.lookon.domain.CompanyResume;
import com.reltecsoft.lookon.domain.Resume;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect CompanyResume_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "company_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Company CompanyResume.companyId;
    
    @ManyToOne
    @JoinColumn(name = "resume_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Resume CompanyResume.resumeId;
    
    public Company CompanyResume.getCompanyId() {
        return companyId;
    }
    
    public void CompanyResume.setCompanyId(Company companyId) {
        this.companyId = companyId;
    }
    
    public Resume CompanyResume.getResumeId() {
        return resumeId;
    }
    
    public void CompanyResume.setResumeId(Resume resumeId) {
        this.resumeId = resumeId;
    }
    
}
