// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.repository;

import com.reltecsoft.lookon.domain.SharedNotes;
import com.reltecsoft.lookon.domain.SharedNotesPK;
import com.reltecsoft.lookon.repository.SharedNotesRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect SharedNotesRepository_Roo_Jpa_Repository {
    
    declare parents: SharedNotesRepository extends JpaRepository<SharedNotes, SharedNotesPK>;
    
    declare parents: SharedNotesRepository extends JpaSpecificationExecutor<SharedNotes>;
    
    declare @type: SharedNotesRepository: @Repository;
    
}
