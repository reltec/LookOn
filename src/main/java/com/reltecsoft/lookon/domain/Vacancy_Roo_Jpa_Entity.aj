// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Vacancy;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Vacancy_Roo_Jpa_Entity {
    
    declare @type: Vacancy: @Entity;
    
    declare @type: Vacancy: @Table(schema = "dbo", name = "vacancy");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", columnDefinition = "bigint identity")
    private Long Vacancy.id;
    
    public Long Vacancy.getId() {
        return this.id;
    }
    
    public void Vacancy.setId(Long id) {
        this.id = id;
    }
    
}
