// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.PersonFriend;
import com.reltecsoft.lookon.domain.PersonFriendPK;
import com.reltecsoft.lookon.repository.PersonFriendRepository;
import com.reltecsoft.lookon.service.PersonFriendServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PersonFriendServiceImpl_Roo_Service {
    
    declare @type: PersonFriendServiceImpl: @Service;
    
    declare @type: PersonFriendServiceImpl: @Transactional;
    
    @Autowired
    PersonFriendRepository PersonFriendServiceImpl.personFriendRepository;
    
    public long PersonFriendServiceImpl.countAllPersonFriends() {
        return personFriendRepository.count();
    }
    
    public void PersonFriendServiceImpl.deletePersonFriend(PersonFriend personFriend) {
        personFriendRepository.delete(personFriend);
    }
    
    public PersonFriend PersonFriendServiceImpl.findPersonFriend(PersonFriendPK id) {
        return personFriendRepository.findOne(id);
    }
    
    public List<PersonFriend> PersonFriendServiceImpl.findAllPersonFriends() {
        return personFriendRepository.findAll();
    }
    
    public List<PersonFriend> PersonFriendServiceImpl.findPersonFriendEntries(int firstResult, int maxResults) {
        return personFriendRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void PersonFriendServiceImpl.savePersonFriend(PersonFriend personFriend) {
        personFriendRepository.save(personFriend);
    }
    
    public PersonFriend PersonFriendServiceImpl.updatePersonFriend(PersonFriend personFriend) {
        return personFriendRepository.save(personFriend);
    }
    
}
