// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Album;
import com.reltecsoft.lookon.domain.ChatMessage;
import com.reltecsoft.lookon.domain.Comment;
import com.reltecsoft.lookon.domain.Community;
import com.reltecsoft.lookon.domain.DtMediaType;
import com.reltecsoft.lookon.domain.Media;
import com.reltecsoft.lookon.domain.Notes;
import com.reltecsoft.lookon.domain.Person;
import com.reltecsoft.lookon.domain.PrivateMessage;
import com.reltecsoft.lookon.domain.RealCompany;
import com.reltecsoft.lookon.domain.Resume;
import com.reltecsoft.lookon.domain.Workspace;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Media_Roo_DbManaged {
    
    @ManyToMany(mappedBy = "medias")
    private Set<Album> Media.albums;
    
    @OneToMany(mappedBy = "mediaId")
    private Set<ChatMessage> Media.chatMessages;
    
    @OneToMany(mappedBy = "mediaId")
    private Set<Comment> Media.comments;
    
    @OneToMany(mappedBy = "mediaId")
    private Set<Community> Media.communities;
    
    @OneToMany(mappedBy = "mediaId")
    private Set<Notes> Media.noteses;
    
    @OneToMany(mappedBy = "photoId", cascade = CascadeType.ALL)
    private Set<Person> Media.people;
    
    @OneToMany(mappedBy = "mediaId")
    private Set<PrivateMessage> Media.privateMessages;
    
    @OneToMany(mappedBy = "logoId")
    private Set<RealCompany> Media.realCompanies;
    
    @OneToMany(mappedBy = "photoId")
    private Set<Resume> Media.resumes;
    
    @OneToMany(mappedBy = "photoId")
    private Set<Workspace> Media.workspaces;
    
    @ManyToOne
    @JoinColumn(name = "type_id", referencedColumnName = "id", nullable = false)
    private DtMediaType Media.typeId;
    
    @Column(name = "link", columnDefinition = "varchar", length = 2048)
    @NotNull
    private String Media.link;
    
    @Column(name = "create_time", columnDefinition = "datetime")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Media.createTime;
    
    public Set<Album> Media.getAlbums() {
        return albums;
    }
    
    public void Media.setAlbums(Set<Album> albums) {
        this.albums = albums;
    }
    
    public Set<ChatMessage> Media.getChatMessages() {
        return chatMessages;
    }
    
    public void Media.setChatMessages(Set<ChatMessage> chatMessages) {
        this.chatMessages = chatMessages;
    }
    
    public Set<Comment> Media.getComments() {
        return comments;
    }
    
    public void Media.setComments(Set<Comment> comments) {
        this.comments = comments;
    }
    
    public Set<Community> Media.getCommunities() {
        return communities;
    }
    
    public void Media.setCommunities(Set<Community> communities) {
        this.communities = communities;
    }
    
    public Set<Notes> Media.getNoteses() {
        return noteses;
    }
    
    public void Media.setNoteses(Set<Notes> noteses) {
        this.noteses = noteses;
    }
    
    public Set<Person> Media.getPeople() {
        return people;
    }
    
    public void Media.setPeople(Set<Person> people) {
        this.people = people;
    }
    
    public Set<PrivateMessage> Media.getPrivateMessages() {
        return privateMessages;
    }
    
    public void Media.setPrivateMessages(Set<PrivateMessage> privateMessages) {
        this.privateMessages = privateMessages;
    }
    
    public Set<RealCompany> Media.getRealCompanies() {
        return realCompanies;
    }
    
    public void Media.setRealCompanies(Set<RealCompany> realCompanies) {
        this.realCompanies = realCompanies;
    }
    
    public Set<Resume> Media.getResumes() {
        return resumes;
    }
    
    public void Media.setResumes(Set<Resume> resumes) {
        this.resumes = resumes;
    }
    
    public Set<Workspace> Media.getWorkspaces() {
        return workspaces;
    }
    
    public void Media.setWorkspaces(Set<Workspace> workspaces) {
        this.workspaces = workspaces;
    }
    
    public DtMediaType Media.getTypeId() {
        return typeId;
    }
    
    public void Media.setTypeId(DtMediaType typeId) {
        this.typeId = typeId;
    }
    
    public String Media.getLink() {
        return link;
    }
    
    public void Media.setLink(String link) {
        this.link = link;
    }
    
    public Calendar Media.getCreateTime() {
        return createTime;
    }
    
    public void Media.setCreateTime(Calendar createTime) {
        this.createTime = createTime;
    }
    
}
