// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.repository;

import com.reltecsoft.lookon.domain.DtChatRole;
import com.reltecsoft.lookon.repository.ChatRoleRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect ChatRoleRepository_Roo_Jpa_Repository {
    
    declare parents: ChatRoleRepository extends JpaRepository<DtChatRole, Integer>;
    
    declare parents: ChatRoleRepository extends JpaSpecificationExecutor<DtChatRole>;
    
    declare @type: ChatRoleRepository: @Repository;
    
}
