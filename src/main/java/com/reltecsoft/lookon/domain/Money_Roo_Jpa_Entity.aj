// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Money;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Money_Roo_Jpa_Entity {
    
    declare @type: Money: @Entity;
    
    declare @type: Money: @Table(schema = "dbo", name = "money");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", columnDefinition = "int identity")
    private Integer Money.id;
    
    public Integer Money.getId() {
        return this.id;
    }
    
    public void Money.setId(Integer id) {
        this.id = id;
    }
    
}
