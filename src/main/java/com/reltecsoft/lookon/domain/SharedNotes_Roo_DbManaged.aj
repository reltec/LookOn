// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtNotesRole;
import com.reltecsoft.lookon.domain.Notes;
import com.reltecsoft.lookon.domain.Person;
import com.reltecsoft.lookon.domain.SharedNotes;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect SharedNotes_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "role_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private DtNotesRole SharedNotes.roleId;
    
    @ManyToOne
    @JoinColumn(name = "note_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Notes SharedNotes.noteId;
    
    @ManyToOne
    @JoinColumn(name = "person_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Person SharedNotes.personId;
    
    public DtNotesRole SharedNotes.getRoleId() {
        return roleId;
    }
    
    public void SharedNotes.setRoleId(DtNotesRole roleId) {
        this.roleId = roleId;
    }
    
    public Notes SharedNotes.getNoteId() {
        return noteId;
    }
    
    public void SharedNotes.setNoteId(Notes noteId) {
        this.noteId = noteId;
    }
    
    public Person SharedNotes.getPersonId() {
        return personId;
    }
    
    public void SharedNotes.setPersonId(Person personId) {
        this.personId = personId;
    }
    
}