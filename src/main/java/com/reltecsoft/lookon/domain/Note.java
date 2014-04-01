package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "note")
public class Note {

    /**
     */
    @NotNull
    @Column(name = "note_text")
    @Size(min = 1, max = 2048)
    private String noteText;

    /**
     */
    @NotNull
    @Column(name = "read_only")
    private Boolean readOnly;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "person_id")
    private Person person;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "media_id")
    private Media media;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "type_id")
    private NotesType type;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Person> shared = new HashSet<Person>();
}
