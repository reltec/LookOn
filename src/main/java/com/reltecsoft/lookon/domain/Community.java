package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "community")
public class Community {

    /**
     */
    @NotNull
    @Column(name = "name")
    @Size(min = 1, max = 255)
    private String name;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "person_id")
    private Person person;

    /**
     */
    @NotNull
    @Column(name = "create_time")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date createTime;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "media_id")
    private Media media;

    /**
     */
    @Column(name = "description")
    @Size(max = 2048)
    private String description;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Person> members = new HashSet<Person>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Person> admins = new HashSet<Person>();
}
