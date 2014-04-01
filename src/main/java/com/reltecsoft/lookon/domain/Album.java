package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "album")
public class Album {

    /**
     */
    @NotNull
    @Column(name = "name")
    @Size(min = 2, max = 50)
    private String name;

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
    @JoinColumn(name = "media_type_id")
    private MediaType mediaType;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "person_id")
    private Person person;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Media> personFiles = new HashSet<Media>();
}
