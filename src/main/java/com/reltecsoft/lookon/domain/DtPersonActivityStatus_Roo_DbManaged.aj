// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtPersonActivityStatus;
import com.reltecsoft.lookon.domain.Person;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect DtPersonActivityStatus_Roo_DbManaged {
    
    @OneToMany(mappedBy = "activityStatusId", cascade = CascadeType.ALL)
    private Set<Person> DtPersonActivityStatus.people;
    
    @Column(name = "name", columnDefinition = "nvarchar", length = 50)
    @NotNull
    private String DtPersonActivityStatus.name;
    
    public Set<Person> DtPersonActivityStatus.getPeople() {
        return people;
    }
    
    public void DtPersonActivityStatus.setPeople(Set<Person> people) {
        this.people = people;
    }
    
    public String DtPersonActivityStatus.getName() {
        return name;
    }
    
    public void DtPersonActivityStatus.setName(String name) {
        this.name = name;
    }
    
}
