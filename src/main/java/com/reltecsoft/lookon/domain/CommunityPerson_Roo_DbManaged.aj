// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Community;
import com.reltecsoft.lookon.domain.CommunityPerson;
import com.reltecsoft.lookon.domain.DtCommunityRole;
import com.reltecsoft.lookon.domain.Person;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect CommunityPerson_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "community_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Community CommunityPerson.communityId;
    
    @ManyToOne
    @JoinColumn(name = "role_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private DtCommunityRole CommunityPerson.roleId;
    
    @ManyToOne
    @JoinColumn(name = "person_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Person CommunityPerson.personId;
    
    public Community CommunityPerson.getCommunityId() {
        return communityId;
    }
    
    public void CommunityPerson.setCommunityId(Community communityId) {
        this.communityId = communityId;
    }
    
    public DtCommunityRole CommunityPerson.getRoleId() {
        return roleId;
    }
    
    public void CommunityPerson.setRoleId(DtCommunityRole roleId) {
        this.roleId = roleId;
    }
    
    public Person CommunityPerson.getPersonId() {
        return personId;
    }
    
    public void CommunityPerson.setPersonId(Person personId) {
        this.personId = personId;
    }
    
}