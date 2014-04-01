package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "work")
public class WorkHistory {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "user_work_id")
    private UserWork userWork;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "company_id")
    private Company company;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "status_id")
    private WorkStatus status;
}
