// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.PersonStatus;
import com.reltecsoft.lookon.repository.PersonStatusRepository;
import com.reltecsoft.lookon.service.PersonStatusServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PersonStatusServiceImpl_Roo_Service {
    
    declare @type: PersonStatusServiceImpl: @Service;
    
    declare @type: PersonStatusServiceImpl: @Transactional;
    
    @Autowired
    PersonStatusRepository PersonStatusServiceImpl.personStatusRepository;
    
    public long PersonStatusServiceImpl.countAllPersonStatuses() {
        return personStatusRepository.count();
    }
    
    public void PersonStatusServiceImpl.deletePersonStatus(PersonStatus personStatus) {
        personStatusRepository.delete(personStatus);
    }
    
    public PersonStatus PersonStatusServiceImpl.findPersonStatus(Long id) {
        return personStatusRepository.findOne(id);
    }
    
    public List<PersonStatus> PersonStatusServiceImpl.findAllPersonStatuses() {
        return personStatusRepository.findAll();
    }
    
    public List<PersonStatus> PersonStatusServiceImpl.findPersonStatusEntries(int firstResult, int maxResults) {
        return personStatusRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void PersonStatusServiceImpl.savePersonStatus(PersonStatus personStatus) {
        personStatusRepository.save(personStatus);
    }
    
    public PersonStatus PersonStatusServiceImpl.updatePersonStatus(PersonStatus personStatus) {
        return personStatusRepository.save(personStatus);
    }
    
}
