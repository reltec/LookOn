// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.repository;

import com.reltecsoft.lookon.domain.DtPersonType;
import com.reltecsoft.lookon.repository.PersonTypeRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect PersonTypeRepository_Roo_Jpa_Repository {
    
    declare parents: PersonTypeRepository extends JpaRepository<DtPersonType, Integer>;
    
    declare parents: PersonTypeRepository extends JpaSpecificationExecutor<DtPersonType>;
    
    declare @type: PersonTypeRepository: @Repository;
    
}
