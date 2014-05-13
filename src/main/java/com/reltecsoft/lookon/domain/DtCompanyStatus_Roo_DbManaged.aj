// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtCompanyStatus;
import com.reltecsoft.lookon.domain.RealCompany;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect DtCompanyStatus_Roo_DbManaged {
    
    @OneToMany(mappedBy = "statusId")
    private Set<RealCompany> DtCompanyStatus.realCompanies;
    
    @Column(name = "name", columnDefinition = "nvarchar", length = 20)
    @NotNull
    private String DtCompanyStatus.name;
    
    public Set<RealCompany> DtCompanyStatus.getRealCompanies() {
        return realCompanies;
    }
    
    public void DtCompanyStatus.setRealCompanies(Set<RealCompany> realCompanies) {
        this.realCompanies = realCompanies;
    }
    
    public String DtCompanyStatus.getName() {
        return name;
    }
    
    public void DtCompanyStatus.setName(String name) {
        this.name = name;
    }
    
}