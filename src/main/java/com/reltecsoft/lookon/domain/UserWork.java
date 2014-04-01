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
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "user_work")
public class UserWork {

    /**
     */
    @NotNull
    @Column(name = "ext_position")
    @Size(min = 1, max = 255)
    private String extPosition;

    /**
     */
    @NotNull
    @Column(name = "education")
    @Size(min = 1, max = 255)
    private String education;

    /**
     */
    @NotNull
    @Column(name = "experience")
    @Size(min = 1, max = 255)
    private String experience;

    /**
     */
    @Column(name = "skills")
    @Size(min = 1, max = 255)
    private String skills;

    /**
     */
    @Column(name = "languages")
    @Size(min = 1, max = 255)
    private String languages;

    /**
     */
    @Column(name = "personality")
    @Size(min = 1, max = 255)
    private String personality;

    /**
     */
    @Column(name = "hobbies")
    @Size(min = 1, max = 255)
    private String hobbies;

    /**
     */
    @Column(name = "tax_number")
    @Size(max = 50)
    private String taxNumber;

    /**
     */
    @Column(name = "passport_num")
    @Size(max = 50)
    private String passportNum;

    /**
     */
    @Column(name = "passport_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date passportDate;

    /**
     */
    @Column(name = "passport_where")
    @Size(max = 50)
    private String passportWhere;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<UserWork> friends = new HashSet<UserWork>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<UserWork> blackList = new HashSet<UserWork>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<UserWork> rater = new HashSet<UserWork>();

    /**
     */
    @ManyToOne
    @JoinColumn(name = "media_id")
    private Media media;

    /**
     */
    @OneToOne
    @JoinColumn(name = "person_id")
    private Person person;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userWork")
    private Set<Resume> resume = new HashSet<Resume>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Company> company = new HashSet<Company>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userWork")
    private Set<WorkHistory> workHistory = new HashSet<WorkHistory>();
}
