package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "resume")
public class Resume {

    /**
     */
    @NotNull
    @Column(name = "country")
    @Size(min = 1, max = 255)
    private String country;

    /**
     */
    @NotNull
    @Column(name = "city")
    @Size(min = 1, max = 255)
    private String city;

    /**
     */
    @NotNull
    @Column(name = "address")
    @Size(min = 1, max = 255)
    private String address;

    /**
     */
    @NotNull
    @Column(name = "school")
    @Size(min = 1, max = 255)
    private String school;

    /**
     */
    @Column(name = "university")
    @Size(max = 255)
    private String university;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "user_work_id")
    private UserWork userWork;
}
