package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "DT_ChatType")
public class ChatType {

    /**
     */
    @NotNull
    @Column(name = "type_name", unique = true)
    @Size(min = 2, max = 50)
    private String typeName;
}
