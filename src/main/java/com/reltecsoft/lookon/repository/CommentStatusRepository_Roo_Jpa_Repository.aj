// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.repository;

import com.reltecsoft.lookon.domain.DtCommentStatus;
import com.reltecsoft.lookon.repository.CommentStatusRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect CommentStatusRepository_Roo_Jpa_Repository {
    
    declare parents: CommentStatusRepository extends JpaRepository<DtCommentStatus, Integer>;
    
    declare parents: CommentStatusRepository extends JpaSpecificationExecutor<DtCommentStatus>;
    
    declare @type: CommentStatusRepository: @Repository;
    
}
