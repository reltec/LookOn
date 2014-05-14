package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaEntity(identifierType = CommunityPersonPK.class, versionField = "", table = "community_person", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "communityId", "roleId", "personId" })
public class CommunityPerson {
}
