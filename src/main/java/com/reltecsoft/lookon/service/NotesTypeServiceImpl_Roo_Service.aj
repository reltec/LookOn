// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.DtNotesType;
import com.reltecsoft.lookon.repository.NotesTypeRepository;
import com.reltecsoft.lookon.service.NotesTypeServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect NotesTypeServiceImpl_Roo_Service {
    
    declare @type: NotesTypeServiceImpl: @Service;
    
    declare @type: NotesTypeServiceImpl: @Transactional;
    
    @Autowired
    NotesTypeRepository NotesTypeServiceImpl.notesTypeRepository;
    
    public long NotesTypeServiceImpl.countAllDtNotesTypes() {
        return notesTypeRepository.count();
    }
    
    public void NotesTypeServiceImpl.deleteDtNotesType(DtNotesType dtNotesType) {
        notesTypeRepository.delete(dtNotesType);
    }
    
    public DtNotesType NotesTypeServiceImpl.findDtNotesType(Integer id) {
        return notesTypeRepository.findOne(id);
    }
    
    public List<DtNotesType> NotesTypeServiceImpl.findAllDtNotesTypes() {
        return notesTypeRepository.findAll();
    }
    
    public List<DtNotesType> NotesTypeServiceImpl.findDtNotesTypeEntries(int firstResult, int maxResults) {
        return notesTypeRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void NotesTypeServiceImpl.saveDtNotesType(DtNotesType dtNotesType) {
        notesTypeRepository.save(dtNotesType);
    }
    
    public DtNotesType NotesTypeServiceImpl.updateDtNotesType(DtNotesType dtNotesType) {
        return notesTypeRepository.save(dtNotesType);
    }
    
}
