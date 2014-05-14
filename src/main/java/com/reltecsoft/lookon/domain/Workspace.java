package com.reltecsoft.lookon.domain;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@Entity
@Table(schema = "dbo", name = "workspace")
@RooJavaBean
@RooJpaEntity(versionField = "", table = "workspace", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "realCompanies", "resumes", "person", "realCompanies_", "resumes_", "workplaces", "photoId" })
public class Workspace {

    @Id
    @GeneratedValue(generator = "customForeignGenerator")
    @GenericGenerator(name = "customForeignGenerator", strategy = "foreign", parameters = @org.hibernate.annotations.Parameter(name = "property", value = "person"))
    @Column(name = "id", columnDefinition = "bigint", unique = true, nullable = false)
    private Long id;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @ManyToMany(mappedBy = "workspaces")
    private Set<RealCompany> realCompanies;

    @ManyToMany(mappedBy = "workspaces")
    private Set<Resume> resumes;

    @OneToOne
    @JoinColumn(name = "id", nullable = false, insertable = false, updatable = false)
    private Person person;

    @OneToMany(mappedBy = "workspaceId")
    private Set<RealCompany> realCompanies_;

    @OneToMany(mappedBy = "workspaceId")
    private Set<Resume> resumes_;

    @OneToMany(mappedBy = "workspaceId")
    private Set<Workplace> workplaces;

    @ManyToOne
    @JoinColumn(name = "photo_id", referencedColumnName = "id")
    private Media photoId;

    public Set<RealCompany> getRealCompanies() {
        return realCompanies;
    }

    public void setRealCompanies(Set<RealCompany> realCompanies) {
        this.realCompanies = realCompanies;
    }

    public Set<Resume> getResumes() {
        return resumes;
    }

    public void setResumes(Set<Resume> resumes) {
        this.resumes = resumes;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public Set<RealCompany> getRealCompanies_() {
        return realCompanies_;
    }

    public void setRealCompanies_(Set<RealCompany> realCompanies_) {
        this.realCompanies_ = realCompanies_;
    }

    public Set<Resume> getResumes_() {
        return resumes_;
    }

    public void setResumes_(Set<Resume> resumes_) {
        this.resumes_ = resumes_;
    }

    public Set<Workplace> getWorkplaces() {
        return workplaces;
    }

    public void setWorkplaces(Set<Workplace> workplaces) {
        this.workplaces = workplaces;
    }

    public Media getPhotoId() {
        return photoId;
    }

    public void setPhotoId(Media photoId) {
        this.photoId = photoId;
    }
}
