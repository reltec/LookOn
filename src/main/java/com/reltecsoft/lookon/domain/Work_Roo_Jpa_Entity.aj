// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Work;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Work_Roo_Jpa_Entity {
    
    declare @type: Work: @Entity;
    
    declare @type: Work: @Table(schema = "dbo", name = "work");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", columnDefinition = "int identity")
    private Integer Work.id;
    
    public Integer Work.getId() {
        return this.id;
    }
    
    public void Work.setId(Integer id) {
        this.id = id;
    }
    
}
