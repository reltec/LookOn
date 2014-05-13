// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtNotesRole;
import com.reltecsoft.lookon.domain.SharedNotes;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect DtNotesRole_Roo_DbManaged {
    
    @OneToMany(mappedBy = "roleId")
    private Set<SharedNotes> DtNotesRole.sharedNoteses;
    
    @Column(name = "name", columnDefinition = "nvarchar", length = 50)
    @NotNull
    private String DtNotesRole.name;
    
    public Set<SharedNotes> DtNotesRole.getSharedNoteses() {
        return sharedNoteses;
    }
    
    public void DtNotesRole.setSharedNoteses(Set<SharedNotes> sharedNoteses) {
        this.sharedNoteses = sharedNoteses;
    }
    
    public String DtNotesRole.getName() {
        return name;
    }
    
    public void DtNotesRole.setName(String name) {
        this.name = name;
    }
    
}
