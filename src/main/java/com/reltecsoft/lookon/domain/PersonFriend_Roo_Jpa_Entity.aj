// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.PersonFriend;
import com.reltecsoft.lookon.domain.PersonFriendPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect PersonFriend_Roo_Jpa_Entity {
    
    declare @type: PersonFriend: @Entity;
    
    declare @type: PersonFriend: @Table(schema = "dbo", name = "person_friend");
    
    @EmbeddedId
    private PersonFriendPK PersonFriend.id;
    
    public PersonFriendPK PersonFriend.getId() {
        return this.id;
    }
    
    public void PersonFriend.setId(PersonFriendPK id) {
        this.id = id;
    }
    
}
