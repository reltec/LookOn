package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "phone")
public class Phone {

    /**
     */
    @NotNull
    @Column(name = "phone", unique = true)
    @Size(min = 2, max = 20)
    private String phone;
}
