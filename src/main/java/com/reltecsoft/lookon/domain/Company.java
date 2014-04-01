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
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "company")
public class Company {

    /**
     */
    @NotNull
    @Column(name = "name")
    @Size(min = 1, max = 255)
    private String name;

    /**
     */
    @Column(name = "country")
    @Size(max = 50)
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
    @Column(name = "company_code")
    @Size(max = 50)
    private String companyCode;

    /**
     */
    @Column(name = "industry")
    @Size(max = 255)
    private String industry;

    /**
     */
    @NotNull
    @Column(name = "create_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date createDate;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "phone_id")
    private Phone phone;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "email_id")
    private Email email;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "logo_id")
    private Media logo;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "status_id")
    private CompanyStatus status;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<UserWork> rater = new HashSet<UserWork>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "company")
    private Set<WorkHistory> workHistory = new HashSet<WorkHistory>();
}
