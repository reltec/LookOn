// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Workspace;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Workspace_Roo_Jpa_Entity {
    
    declare @type: Workspace: @Entity;
    
    declare @type: Workspace: @Table(schema = "dbo", name = "workspace");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", columnDefinition = "bigint")
    private Long Workspace.id;
    
    public Long Workspace.getId() {
        return this.id;
    }
    
    public void Workspace.setId(Long id) {
        this.id = id;
    }
    
}
