// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtWorkStatus;
import com.reltecsoft.lookon.domain.Workplace;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect DtWorkStatus_Roo_DbManaged {
    
    @OneToMany(mappedBy = "statusId")
    private Set<Workplace> DtWorkStatus.workplaces;
    
    @Column(name = "name", columnDefinition = "nvarchar", length = 50)
    @NotNull
    private String DtWorkStatus.name;
    
    public Set<Workplace> DtWorkStatus.getWorkplaces() {
        return workplaces;
    }
    
    public void DtWorkStatus.setWorkplaces(Set<Workplace> workplaces) {
        this.workplaces = workplaces;
    }
    
    public String DtWorkStatus.getName() {
        return name;
    }
    
    public void DtWorkStatus.setName(String name) {
        this.name = name;
    }
    
}
