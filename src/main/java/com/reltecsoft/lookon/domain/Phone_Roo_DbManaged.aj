// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Phone;
import com.reltecsoft.lookon.domain.RealCompany;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect Phone_Roo_DbManaged {
    
    @OneToMany(mappedBy = "phoneId")
    private Set<RealCompany> Phone.realCompanies;
    
    @Column(name = "phone_number", columnDefinition = "nvarchar", length = 20)
    @NotNull
    private String Phone.phoneNumber;
    
    public Set<RealCompany> Phone.getRealCompanies() {
        return realCompanies;
    }
    
    public void Phone.setRealCompanies(Set<RealCompany> realCompanies) {
        this.realCompanies = realCompanies;
    }
    
    public String Phone.getPhoneNumber() {
        return phoneNumber;
    }
    
    public void Phone.setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
}
