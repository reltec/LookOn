// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.SharedNotes;
import com.reltecsoft.lookon.domain.SharedNotesPK;
import com.reltecsoft.lookon.service.SharedNotesService;
import java.util.List;

privileged aspect SharedNotesService_Roo_Service {
    
    public abstract long SharedNotesService.countAllSharedNoteses();    
    public abstract void SharedNotesService.deleteSharedNotes(SharedNotes sharedNotes);    
    public abstract SharedNotes SharedNotesService.findSharedNotes(SharedNotesPK id);    
    public abstract List<SharedNotes> SharedNotesService.findAllSharedNoteses();    
    public abstract List<SharedNotes> SharedNotesService.findSharedNotesEntries(int firstResult, int maxResults);    
    public abstract void SharedNotesService.saveSharedNotes(SharedNotes sharedNotes);    
    public abstract SharedNotes SharedNotesService.updateSharedNotes(SharedNotes sharedNotes);    
}
