// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.PersonRating;
import com.reltecsoft.lookon.domain.PersonRatingPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect PersonRating_Roo_Jpa_Entity {
    
    declare @type: PersonRating: @Entity;
    
    declare @type: PersonRating: @Table(schema = "dbo", name = "person_rating");
    
    @EmbeddedId
    private PersonRatingPK PersonRating.id;
    
    public PersonRatingPK PersonRating.getId() {
        return this.id;
    }
    
    public void PersonRating.setId(PersonRatingPK id) {
        this.id = id;
    }
    
}
