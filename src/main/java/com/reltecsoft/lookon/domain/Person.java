package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "person")
public class Person {

    /**
     */
    @Column(name = "name")
    @Size(max = 50)
    private String name;

    /**
     */
    @Column(name = "surname")
    @Size(max = 50)
    private String surname;

    /**
     */
    @Column(name = "middle_name")
    @Size(max = 50)
    private String middleName;

    /**
     */
    @NotNull
    @Column(name = "login")
    @Size(min = 2, max = 50)
    private String login;

    /**
     */
    @Column(name = "phone")
    @Size(max = 20)
    private String phone;

    /**
     */
    @NotNull
    @Column(name = "email")
    @Size(min = 6, max = 50)
    private String email;

    /**
     */
    @NotNull
    @Column(name = "register_date")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date registerDate;

    /**
     */
    @NotNull
    @Column(name = "male_female")
    private Boolean maleFemale;

    /**
     */
    @Column(name = "birth_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date birthDate;

    /**
     */
    @NotNull
    @Column(name = "country")
    @Size(min = 2, max = 255)
    private String country;

    /**
     */
    @Column(name = "city")
    @Size(max = 255)
    private String city;

    /**
     */
    @Column(name = "address")
    @Size(max = 255)
    private String address;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "media_id")
    private Media media;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "status_id")
    private PersonStatus personStatus;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "person")
    private Set<Album> album = new HashSet<Album>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "person")
    private Set<Note> notes = new HashSet<Note>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "person")
    private Set<Chat> chats = new HashSet<Chat>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "person")
    private Set<Message> messages = new HashSet<Message>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Person> friends = new HashSet<Person>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Person> blackList = new HashSet<Person>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Person> rater = new HashSet<Person>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "person")
    private Set<Community> communities = new HashSet<Community>();

    /**
     */
    @OneToOne
    @JoinColumn(name = "user_work_id")
    private UserWork userWork;
}
