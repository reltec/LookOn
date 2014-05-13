// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtPersonType;
import com.reltecsoft.lookon.domain.Person;
import com.reltecsoft.lookon.domain.PersonFriend;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect PersonFriend_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "type_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private DtPersonType PersonFriend.typeId;
    
    @ManyToOne
    @JoinColumn(name = "person_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Person PersonFriend.personId;
    
    @ManyToOne
    @JoinColumn(name = "friend_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Person PersonFriend.friendId;
    
    public DtPersonType PersonFriend.getTypeId() {
        return typeId;
    }
    
    public void PersonFriend.setTypeId(DtPersonType typeId) {
        this.typeId = typeId;
    }
    
    public Person PersonFriend.getPersonId() {
        return personId;
    }
    
    public void PersonFriend.setPersonId(Person personId) {
        this.personId = personId;
    }
    
    public Person PersonFriend.getFriendId() {
        return friendId;
    }
    
    public void PersonFriend.setFriendId(Person friendId) {
        this.friendId = friendId;
    }
    
}