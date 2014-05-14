// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.SharedNotes;
import com.reltecsoft.lookon.domain.SharedNotesPK;
import com.reltecsoft.lookon.repository.SharedNotesRepository;
import com.reltecsoft.lookon.service.SharedNotesServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SharedNotesServiceImpl_Roo_Service {
    
    declare @type: SharedNotesServiceImpl: @Service;
    
    declare @type: SharedNotesServiceImpl: @Transactional;
    
    @Autowired
    SharedNotesRepository SharedNotesServiceImpl.sharedNotesRepository;
    
    public long SharedNotesServiceImpl.countAllSharedNoteses() {
        return sharedNotesRepository.count();
    }
    
    public void SharedNotesServiceImpl.deleteSharedNotes(SharedNotes sharedNotes) {
        sharedNotesRepository.delete(sharedNotes);
    }
    
    public SharedNotes SharedNotesServiceImpl.findSharedNotes(SharedNotesPK id) {
        return sharedNotesRepository.findOne(id);
    }
    
    public List<SharedNotes> SharedNotesServiceImpl.findAllSharedNoteses() {
        return sharedNotesRepository.findAll();
    }
    
    public List<SharedNotes> SharedNotesServiceImpl.findSharedNotesEntries(int firstResult, int maxResults) {
        return sharedNotesRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void SharedNotesServiceImpl.saveSharedNotes(SharedNotes sharedNotes) {
        sharedNotesRepository.save(sharedNotes);
    }
    
    public SharedNotes SharedNotesServiceImpl.updateSharedNotes(SharedNotes sharedNotes) {
        return sharedNotesRepository.save(sharedNotes);
    }
    
}
