// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtChatType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect DtChatType_Roo_Jpa_Entity {
    
    declare @type: DtChatType: @Entity;
    
    declare @type: DtChatType: @Table(schema = "dbo", name = "DT_ChatType");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", columnDefinition = "int identity")
    private Integer DtChatType.id;
    
    public Integer DtChatType.getId() {
        return this.id;
    }
    
    public void DtChatType.setId(Integer id) {
        this.id = id;
    }
    
}
