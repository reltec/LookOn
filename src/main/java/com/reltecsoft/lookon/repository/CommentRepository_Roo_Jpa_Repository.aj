// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.repository;

import com.reltecsoft.lookon.domain.Comment;
import com.reltecsoft.lookon.repository.CommentRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect CommentRepository_Roo_Jpa_Repository {
    
    declare parents: CommentRepository extends JpaRepository<Comment, Long>;
    
    declare parents: CommentRepository extends JpaSpecificationExecutor<Comment>;
    
    declare @type: CommentRepository: @Repository;
    
}