// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtCompanyStatus;
import com.reltecsoft.lookon.domain.Email;
import com.reltecsoft.lookon.domain.Media;
import com.reltecsoft.lookon.domain.Phone;
import com.reltecsoft.lookon.domain.RealCompany;
import com.reltecsoft.lookon.domain.Resume;
import com.reltecsoft.lookon.domain.Vacancy;
import com.reltecsoft.lookon.domain.Workplace;
import com.reltecsoft.lookon.domain.Workspace;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect RealCompany_Roo_DbManaged {
    
    @ManyToMany
    @JoinTable(name = "company_rating", joinColumns = { @JoinColumn(name = "company_id", nullable = false) }, inverseJoinColumns = { @JoinColumn(name = "rater_id", nullable = false) })
    private Set<Workspace> RealCompany.workspaces;
    
    @ManyToMany
    @JoinTable(name = "real_company_resume", joinColumns = { @JoinColumn(name = "real_company_id", nullable = false) }, inverseJoinColumns = { @JoinColumn(name = "resume_id", nullable = false) })
    private Set<Resume> RealCompany.resumes1;
    
    @OneToMany(mappedBy = "companyId")
    private Set<Vacancy> RealCompany.vacancies;
    
    @OneToMany(mappedBy = "companyId")
    private Set<Workplace> RealCompany.workplaces;
    
    @ManyToOne
    @JoinColumn(name = "status_id", referencedColumnName = "id")
    private DtCompanyStatus RealCompany.statusId;
    
    @ManyToOne
    @JoinColumn(name = "email_id", referencedColumnName = "id")
    private Email RealCompany.emailId;
    
    @ManyToOne
    @JoinColumn(name = "logo_id", referencedColumnName = "id")
    private Media RealCompany.logoId;
    
    @ManyToOne
    @JoinColumn(name = "phone_id", referencedColumnName = "id", nullable = false)
    private Phone RealCompany.phoneId;
    
    @ManyToOne
    @JoinColumn(name = "workspace_id", referencedColumnName = "id", nullable = false)
    private Workspace RealCompany.workspaceId;
    
    @Column(name = "name", columnDefinition = "nvarchar", length = 50)
    @NotNull
    private String RealCompany.name;
    
    @Column(name = "create_date", columnDefinition = "datetime")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar RealCompany.createDate;
    
    @Column(name = "country", columnDefinition = "nvarchar", length = 50)
    private String RealCompany.country;
    
    @Column(name = "city", columnDefinition = "nvarchar", length = 255)
    private String RealCompany.city;
    
    @Column(name = "adress", columnDefinition = "nvarchar", length = 255)
    private String RealCompany.adress;
    
    @Column(name = "company_code", columnDefinition = "nvarchar", length = 50)
    private String RealCompany.companyCode;
    
    @Column(name = "industry", columnDefinition = "nvarchar", length = 255)
    private String RealCompany.industry;
    
    public Set<Workspace> RealCompany.getWorkspaces() {
        return workspaces;
    }
    
    public void RealCompany.setWorkspaces(Set<Workspace> workspaces) {
        this.workspaces = workspaces;
    }
    
    public Set<Resume> RealCompany.getResumes1() {
        return resumes1;
    }
    
    public void RealCompany.setResumes1(Set<Resume> resumes1) {
        this.resumes1 = resumes1;
    }
    
    public Set<Vacancy> RealCompany.getVacancies() {
        return vacancies;
    }
    
    public void RealCompany.setVacancies(Set<Vacancy> vacancies) {
        this.vacancies = vacancies;
    }
    
    public Set<Workplace> RealCompany.getWorkplaces() {
        return workplaces;
    }
    
    public void RealCompany.setWorkplaces(Set<Workplace> workplaces) {
        this.workplaces = workplaces;
    }
    
    public DtCompanyStatus RealCompany.getStatusId() {
        return statusId;
    }
    
    public void RealCompany.setStatusId(DtCompanyStatus statusId) {
        this.statusId = statusId;
    }
    
    public Email RealCompany.getEmailId() {
        return emailId;
    }
    
    public void RealCompany.setEmailId(Email emailId) {
        this.emailId = emailId;
    }
    
    public Media RealCompany.getLogoId() {
        return logoId;
    }
    
    public void RealCompany.setLogoId(Media logoId) {
        this.logoId = logoId;
    }
    
    public Phone RealCompany.getPhoneId() {
        return phoneId;
    }
    
    public void RealCompany.setPhoneId(Phone phoneId) {
        this.phoneId = phoneId;
    }
    
    public Workspace RealCompany.getWorkspaceId() {
        return workspaceId;
    }
    
    public void RealCompany.setWorkspaceId(Workspace workspaceId) {
        this.workspaceId = workspaceId;
    }
    
    public String RealCompany.getName() {
        return name;
    }
    
    public void RealCompany.setName(String name) {
        this.name = name;
    }
    
    public Calendar RealCompany.getCreateDate() {
        return createDate;
    }
    
    public void RealCompany.setCreateDate(Calendar createDate) {
        this.createDate = createDate;
    }
    
    public String RealCompany.getCountry() {
        return country;
    }
    
    public void RealCompany.setCountry(String country) {
        this.country = country;
    }
    
    public String RealCompany.getCity() {
        return city;
    }
    
    public void RealCompany.setCity(String city) {
        this.city = city;
    }
    
    public String RealCompany.getAdress() {
        return adress;
    }
    
    public void RealCompany.setAdress(String adress) {
        this.adress = adress;
    }
    
    public String RealCompany.getCompanyCode() {
        return companyCode;
    }
    
    public void RealCompany.setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }
    
    public String RealCompany.getIndustry() {
        return industry;
    }
    
    public void RealCompany.setIndustry(String industry) {
        this.industry = industry;
    }
    
}
