// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.CompanyRating;
import com.reltecsoft.lookon.domain.CompanyRatingPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect CompanyRating_Roo_Jpa_Entity {
    
    declare @type: CompanyRating: @Entity;
    
    declare @type: CompanyRating: @Table(schema = "dbo", name = "company_rating");
    
    @EmbeddedId
    private CompanyRatingPK CompanyRating.id;
    
    public CompanyRatingPK CompanyRating.getId() {
        return this.id;
    }
    
    public void CompanyRating.setId(CompanyRatingPK id) {
        this.id = id;
    }
    
}
