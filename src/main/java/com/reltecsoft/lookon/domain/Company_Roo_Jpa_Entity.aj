// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Company;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Company_Roo_Jpa_Entity {
    
    declare @type: Company: @Entity;
    
    declare @type: Company: @Table(schema = "dbo", name = "company");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", columnDefinition = "bigint identity")
    private Long Company.id;
    
    public Long Company.getId() {
        return this.id;
    }
    
    public void Company.setId(Long id) {
        this.id = id;
    }
    
}
