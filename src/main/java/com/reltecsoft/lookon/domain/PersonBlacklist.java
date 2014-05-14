package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaEntity(identifierType = PersonBlacklistPK.class, versionField = "", table = "person_blacklist", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "typeId", "personId", "blacklistId" })
public class PersonBlacklist {
}
