// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.NotesType;
import com.reltecsoft.lookon.service.NotesTypeService;
import java.util.List;

privileged aspect NotesTypeService_Roo_Service {
    
    public abstract long NotesTypeService.countAllNotesTypes();    
    public abstract void NotesTypeService.deleteNotesType(NotesType notesType);    
    public abstract NotesType NotesTypeService.findNotesType(Long id);    
    public abstract List<NotesType> NotesTypeService.findAllNotesTypes();    
    public abstract List<NotesType> NotesTypeService.findNotesTypeEntries(int firstResult, int maxResults);    
    public abstract void NotesTypeService.saveNotesType(NotesType notesType);    
    public abstract NotesType NotesTypeService.updateNotesType(NotesType notesType);    
}