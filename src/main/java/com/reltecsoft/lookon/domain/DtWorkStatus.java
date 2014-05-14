package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaEntity(versionField = "", table = "DT_WorkStatus", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "workplaces" })
public class DtWorkStatus {
}
