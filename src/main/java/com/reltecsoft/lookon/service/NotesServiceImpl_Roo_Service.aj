// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.Notes;
import com.reltecsoft.lookon.repository.NotesRepository;
import com.reltecsoft.lookon.service.NotesServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect NotesServiceImpl_Roo_Service {
    
    declare @type: NotesServiceImpl: @Service;
    
    declare @type: NotesServiceImpl: @Transactional;
    
    @Autowired
    NotesRepository NotesServiceImpl.notesRepository;
    
    public long NotesServiceImpl.countAllNoteses() {
        return notesRepository.count();
    }
    
    public void NotesServiceImpl.deleteNotes(Notes notes) {
        notesRepository.delete(notes);
    }
    
    public Notes NotesServiceImpl.findNotes(Long id) {
        return notesRepository.findOne(id);
    }
    
    public List<Notes> NotesServiceImpl.findAllNoteses() {
        return notesRepository.findAll();
    }
    
    public List<Notes> NotesServiceImpl.findNotesEntries(int firstResult, int maxResults) {
        return notesRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void NotesServiceImpl.saveNotes(Notes notes) {
        notesRepository.save(notes);
    }
    
    public Notes NotesServiceImpl.updateNotes(Notes notes) {
        return notesRepository.save(notes);
    }
    
}
