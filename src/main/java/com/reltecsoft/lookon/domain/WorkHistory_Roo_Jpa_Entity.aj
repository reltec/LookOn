// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.WorkHistory;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect WorkHistory_Roo_Jpa_Entity {
    
    declare @type: WorkHistory: @Entity;
    
    declare @type: WorkHistory: @Table(name = "work");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long WorkHistory.id;
    
    @Version
    @Column(name = "version")
    private Integer WorkHistory.version;
    
    public Long WorkHistory.getId() {
        return this.id;
    }
    
    public void WorkHistory.setId(Long id) {
        this.id = id;
    }
    
    public Integer WorkHistory.getVersion() {
        return this.version;
    }
    
    public void WorkHistory.setVersion(Integer version) {
        this.version = version;
    }
    
}