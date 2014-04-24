// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.CompanyResume;
import com.reltecsoft.lookon.domain.Media;
import com.reltecsoft.lookon.domain.RealCompanyResume;
import com.reltecsoft.lookon.domain.Resume;
import com.reltecsoft.lookon.domain.ResumeRating;
import com.reltecsoft.lookon.domain.Workspace;
import java.sql.Clob;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect Resume_Roo_DbManaged {
    
    @OneToMany(mappedBy = "resumeId")
    private Set<CompanyResume> Resume.companyResumes;
    
    @OneToMany(mappedBy = "resumeId")
    private Set<RealCompanyResume> Resume.realCompanyResumes;
    
    @OneToMany(mappedBy = "resumeId")
    private Set<ResumeRating> Resume.resumeRatings;
    
    @ManyToOne
    @JoinColumn(name = "photo_id", referencedColumnName = "id")
    private Media Resume.photoId;
    
    @ManyToOne
    @JoinColumn(name = "workspace_id", referencedColumnName = "id", nullable = false)
    private Workspace Resume.workspaceId;
    
    @Column(name = "education", columnDefinition = "nvarchar", length = 255)
    @NotNull
    private String Resume.education;
    
    @Column(name = "ext_position", columnDefinition = "nvarchar", length = 255)
    @NotNull
    private String Resume.extPosition;
    
    @Column(name = "experience", columnDefinition = "nvarchar", length = 255)
    private String Resume.experience;
    
    @Column(name = "skills", columnDefinition = "nvarchar", length = 255)
    private String Resume.skills;
    
    @Column(name = "language", columnDefinition = "nvarchar", length = 255)
    private String Resume.language;
    
    @Column(name = "personality", columnDefinition = "nvarchar", length = 255)
    private String Resume.personality;
    
    @Column(name = "hobby", columnDefinition = "nvarchar")
    @Lob
    private Clob Resume.hobby;
    
    @Column(name = "country", columnDefinition = "varchar", length = 40)
    private String Resume.country;
    
    @Column(name = "city", columnDefinition = "varchar", length = 255)
    @NotNull
    private String Resume.city;
    
    @Column(name = "adress", columnDefinition = "varchar", length = 255)
    @NotNull
    private String Resume.adress;
    
    @Column(name = "school", columnDefinition = "varchar", length = 255)
    @NotNull
    private String Resume.school;
    
    @Column(name = "university", columnDefinition = "varchar", length = 255)
    private String Resume.university;
    
    @Column(name = "passport_num", columnDefinition = "nvarchar", length = 50)
    private String Resume.passportNum;
    
    @Column(name = "passport_date", columnDefinition = "date", length = 10)
    private String Resume.passportDate;
    
    @Column(name = "passport_where", columnDefinition = "nvarchar", length = 50)
    private String Resume.passportWhere;
    
    @Column(name = "tax_number", columnDefinition = "nvarchar", length = 50)
    private String Resume.taxNumber;
    
    public Set<CompanyResume> Resume.getCompanyResumes() {
        return companyResumes;
    }
    
    public void Resume.setCompanyResumes(Set<CompanyResume> companyResumes) {
        this.companyResumes = companyResumes;
    }
    
    public Set<RealCompanyResume> Resume.getRealCompanyResumes() {
        return realCompanyResumes;
    }
    
    public void Resume.setRealCompanyResumes(Set<RealCompanyResume> realCompanyResumes) {
        this.realCompanyResumes = realCompanyResumes;
    }
    
    public Set<ResumeRating> Resume.getResumeRatings() {
        return resumeRatings;
    }
    
    public void Resume.setResumeRatings(Set<ResumeRating> resumeRatings) {
        this.resumeRatings = resumeRatings;
    }
    
    public Media Resume.getPhotoId() {
        return photoId;
    }
    
    public void Resume.setPhotoId(Media photoId) {
        this.photoId = photoId;
    }
    
    public Workspace Resume.getWorkspaceId() {
        return workspaceId;
    }
    
    public void Resume.setWorkspaceId(Workspace workspaceId) {
        this.workspaceId = workspaceId;
    }
    
    public String Resume.getEducation() {
        return education;
    }
    
    public void Resume.setEducation(String education) {
        this.education = education;
    }
    
    public String Resume.getExtPosition() {
        return extPosition;
    }
    
    public void Resume.setExtPosition(String extPosition) {
        this.extPosition = extPosition;
    }
    
    public String Resume.getExperience() {
        return experience;
    }
    
    public void Resume.setExperience(String experience) {
        this.experience = experience;
    }
    
    public String Resume.getSkills() {
        return skills;
    }
    
    public void Resume.setSkills(String skills) {
        this.skills = skills;
    }
    
    public String Resume.getLanguage() {
        return language;
    }
    
    public void Resume.setLanguage(String language) {
        this.language = language;
    }
    
    public String Resume.getPersonality() {
        return personality;
    }
    
    public void Resume.setPersonality(String personality) {
        this.personality = personality;
    }
    
    public Clob Resume.getHobby() {
        return hobby;
    }
    
    public void Resume.setHobby(Clob hobby) {
        this.hobby = hobby;
    }
    
    public String Resume.getCountry() {
        return country;
    }
    
    public void Resume.setCountry(String country) {
        this.country = country;
    }
    
    public String Resume.getCity() {
        return city;
    }
    
    public void Resume.setCity(String city) {
        this.city = city;
    }
    
    public String Resume.getAdress() {
        return adress;
    }
    
    public void Resume.setAdress(String adress) {
        this.adress = adress;
    }
    
    public String Resume.getSchool() {
        return school;
    }
    
    public void Resume.setSchool(String school) {
        this.school = school;
    }
    
    public String Resume.getUniversity() {
        return university;
    }
    
    public void Resume.setUniversity(String university) {
        this.university = university;
    }
    
    public String Resume.getPassportNum() {
        return passportNum;
    }
    
    public void Resume.setPassportNum(String passportNum) {
        this.passportNum = passportNum;
    }
    
    public String Resume.getPassportDate() {
        return passportDate;
    }
    
    public void Resume.setPassportDate(String passportDate) {
        this.passportDate = passportDate;
    }
    
    public String Resume.getPassportWhere() {
        return passportWhere;
    }
    
    public void Resume.setPassportWhere(String passportWhere) {
        this.passportWhere = passportWhere;
    }
    
    public String Resume.getTaxNumber() {
        return taxNumber;
    }
    
    public void Resume.setTaxNumber(String taxNumber) {
        this.taxNumber = taxNumber;
    }
    
}
