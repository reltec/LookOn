package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "chat")
public class Chat {

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "person_id")
    private Person person;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "type_id")
    private ChatType chatType;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Person> chatter = new HashSet<Person>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "chat")
    private Set<Message> messages = new HashSet<Message>();
}
