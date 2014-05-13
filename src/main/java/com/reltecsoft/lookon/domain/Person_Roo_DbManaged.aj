// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Album;
import com.reltecsoft.lookon.domain.Chat;
import com.reltecsoft.lookon.domain.ChatMember;
import com.reltecsoft.lookon.domain.ChatMessage;
import com.reltecsoft.lookon.domain.Comment;
import com.reltecsoft.lookon.domain.Community;
import com.reltecsoft.lookon.domain.CommunityPerson;
import com.reltecsoft.lookon.domain.DtPersonActivityStatus;
import com.reltecsoft.lookon.domain.DtPersonNetworkStatus;
import com.reltecsoft.lookon.domain.Media;
import com.reltecsoft.lookon.domain.Notes;
import com.reltecsoft.lookon.domain.Person;
import com.reltecsoft.lookon.domain.PersonBlacklist;
import com.reltecsoft.lookon.domain.PersonFriend;
import com.reltecsoft.lookon.domain.PrivateMessage;
import com.reltecsoft.lookon.domain.SharedNotes;
import com.reltecsoft.lookon.domain.Workspace;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Person_Roo_DbManaged {
    
    @ManyToMany
    @JoinTable(name = "person_rating", joinColumns = { @JoinColumn(name = "person_id", nullable = false) }, inverseJoinColumns = { @JoinColumn(name = "rater_id", nullable = false) })
    private Set<Person> Person.people1;
    
    @ManyToMany(mappedBy = "people2")
    private Set<Album> Person.albums2;
    
    @ManyToMany(mappedBy = "people1")
    private Set<Chat> Person.chats1;
    
    @ManyToMany(mappedBy = "people1")
    private Set<Person> Person.people2;
    
    @OneToOne(mappedBy = "person", cascade = CascadeType.ALL)
    private Workspace Person.workspace;
    
    @OneToMany(mappedBy = "inviterId")
    private Set<ChatMember> Person.chatMembers;
    
    @OneToMany(mappedBy = "personId")
    private Set<ChatMember> Person.chatMembers1;
    
    @OneToMany(mappedBy = "personId")
    private Set<ChatMessage> Person.chatMessages;
    
    @OneToMany(mappedBy = "personId")
    private Set<Comment> Person.comments;
    
    @OneToMany(mappedBy = "personId")
    private Set<Community> Person.communities;
    
    @OneToMany(mappedBy = "personId")
    private Set<CommunityPerson> Person.communitypeople;
    
    @OneToMany(mappedBy = "personId")
    private Set<Notes> Person.noteses;
    
    @OneToMany(mappedBy = "blacklistId")
    private Set<PersonBlacklist> Person.personBlacklists;
    
    @OneToMany(mappedBy = "personId", cascade = CascadeType.ALL)
    private Set<PersonBlacklist> Person.personBlacklists1;
    
    @OneToMany(mappedBy = "friendId", cascade = CascadeType.ALL)
    private Set<PersonFriend> Person.personFriends;
    
    @OneToMany(mappedBy = "personId")
    private Set<PersonFriend> Person.personFriends1;
    
    @OneToMany(mappedBy = "authorId")
    private Set<PrivateMessage> Person.privateMessages;
    
    @OneToMany(mappedBy = "recipientId")
    private Set<PrivateMessage> Person.privateMessages1;
    
    @OneToMany(mappedBy = "personId")
    private Set<SharedNotes> Person.sharedNoteses;
    
    @ManyToOne
    @JoinColumn(name = "activity_status_id", referencedColumnName = "id", nullable = false)
    private DtPersonActivityStatus Person.activityStatusId;
    
    @ManyToOne
    @JoinColumn(name = "network_status_id", referencedColumnName = "id", nullable = false)
    private DtPersonNetworkStatus Person.networkStatusId;
    
    @ManyToOne
    @JoinColumn(name = "photo_id", referencedColumnName = "id")
    private Media Person.photoId;
    
    @Column(name = "name", columnDefinition = "nvarchar", length = 50)
    @NotNull
    private String Person.name;
    
    @Column(name = "surname", columnDefinition = "nvarchar", length = 50)
    @NotNull
    private String Person.surname;
    
    @Column(name = "middle_name", columnDefinition = "nvarchar", length = 50)
    private String Person.middleName;
    
    @Column(name = "login", columnDefinition = "nvarchar", length = 50)
    @NotNull
    private String Person.login;
    
    @Column(name = "phone", columnDefinition = "nvarchar", length = 20)
    private String Person.phone;
    
    @Column(name = "regdate", columnDefinition = "datetime")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Person.regdate;
    
    @Column(name = "email", columnDefinition = "nvarchar", length = 50)
    @NotNull
    private String Person.email;
    
    @Column(name = "male_female", columnDefinition = "bit")
    @NotNull
    private boolean Person.maleFemale;
    
    @Column(name = "birth_date", columnDefinition = "datetime")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Person.birthDate;
    
    @Column(name = "country", columnDefinition = "nvarchar", length = 50)
    @NotNull
    private String Person.country;
    
    @Column(name = "city", columnDefinition = "nvarchar", length = 255)
    private String Person.city;
    
    @Column(name = "adress", columnDefinition = "nvarchar", length = 255)
    private String Person.adress;
    
    public Set<Person> Person.getPeople1() {
        return people1;
    }
    
    public void Person.setPeople1(Set<Person> people1) {
        this.people1 = people1;
    }
    
    public Set<Album> Person.getAlbums2() {
        return albums2;
    }
    
    public void Person.setAlbums2(Set<Album> albums2) {
        this.albums2 = albums2;
    }
    
    public Set<Chat> Person.getChats1() {
        return chats1;
    }
    
    public void Person.setChats1(Set<Chat> chats1) {
        this.chats1 = chats1;
    }
    
    public Set<Person> Person.getPeople2() {
        return people2;
    }
    
    public void Person.setPeople2(Set<Person> people2) {
        this.people2 = people2;
    }
    
    public Workspace Person.getWorkspace() {
        return workspace;
    }
    
    public void Person.setWorkspace(Workspace workspace) {
        this.workspace = workspace;
    }
    
    public Set<ChatMember> Person.getChatMembers() {
        return chatMembers;
    }
    
    public void Person.setChatMembers(Set<ChatMember> chatMembers) {
        this.chatMembers = chatMembers;
    }
    
    public Set<ChatMember> Person.getChatMembers1() {
        return chatMembers1;
    }
    
    public void Person.setChatMembers1(Set<ChatMember> chatMembers1) {
        this.chatMembers1 = chatMembers1;
    }
    
    public Set<ChatMessage> Person.getChatMessages() {
        return chatMessages;
    }
    
    public void Person.setChatMessages(Set<ChatMessage> chatMessages) {
        this.chatMessages = chatMessages;
    }
    
    public Set<Comment> Person.getComments() {
        return comments;
    }
    
    public void Person.setComments(Set<Comment> comments) {
        this.comments = comments;
    }
    
    public Set<Community> Person.getCommunities() {
        return communities;
    }
    
    public void Person.setCommunities(Set<Community> communities) {
        this.communities = communities;
    }
    
    public Set<CommunityPerson> Person.getCommunitypeople() {
        return communitypeople;
    }
    
    public void Person.setCommunitypeople(Set<CommunityPerson> communitypeople) {
        this.communitypeople = communitypeople;
    }
    
    public Set<Notes> Person.getNoteses() {
        return noteses;
    }
    
    public void Person.setNoteses(Set<Notes> noteses) {
        this.noteses = noteses;
    }
    
    public Set<PersonBlacklist> Person.getPersonBlacklists() {
        return personBlacklists;
    }
    
    public void Person.setPersonBlacklists(Set<PersonBlacklist> personBlacklists) {
        this.personBlacklists = personBlacklists;
    }
    
    public Set<PersonBlacklist> Person.getPersonBlacklists1() {
        return personBlacklists1;
    }
    
    public void Person.setPersonBlacklists1(Set<PersonBlacklist> personBlacklists1) {
        this.personBlacklists1 = personBlacklists1;
    }
    
    public Set<PersonFriend> Person.getPersonFriends() {
        return personFriends;
    }
    
    public void Person.setPersonFriends(Set<PersonFriend> personFriends) {
        this.personFriends = personFriends;
    }
    
    public Set<PersonFriend> Person.getPersonFriends1() {
        return personFriends1;
    }
    
    public void Person.setPersonFriends1(Set<PersonFriend> personFriends1) {
        this.personFriends1 = personFriends1;
    }
    
    public Set<PrivateMessage> Person.getPrivateMessages() {
        return privateMessages;
    }
    
    public void Person.setPrivateMessages(Set<PrivateMessage> privateMessages) {
        this.privateMessages = privateMessages;
    }
    
    public Set<PrivateMessage> Person.getPrivateMessages1() {
        return privateMessages1;
    }
    
    public void Person.setPrivateMessages1(Set<PrivateMessage> privateMessages1) {
        this.privateMessages1 = privateMessages1;
    }
    
    public Set<SharedNotes> Person.getSharedNoteses() {
        return sharedNoteses;
    }
    
    public void Person.setSharedNoteses(Set<SharedNotes> sharedNoteses) {
        this.sharedNoteses = sharedNoteses;
    }
    
    public DtPersonActivityStatus Person.getActivityStatusId() {
        return activityStatusId;
    }
    
    public void Person.setActivityStatusId(DtPersonActivityStatus activityStatusId) {
        this.activityStatusId = activityStatusId;
    }
    
    public DtPersonNetworkStatus Person.getNetworkStatusId() {
        return networkStatusId;
    }
    
    public void Person.setNetworkStatusId(DtPersonNetworkStatus networkStatusId) {
        this.networkStatusId = networkStatusId;
    }
    
    public Media Person.getPhotoId() {
        return photoId;
    }
    
    public void Person.setPhotoId(Media photoId) {
        this.photoId = photoId;
    }
    
    public String Person.getName() {
        return name;
    }
    
    public void Person.setName(String name) {
        this.name = name;
    }
    
    public String Person.getSurname() {
        return surname;
    }
    
    public void Person.setSurname(String surname) {
        this.surname = surname;
    }
    
    public String Person.getMiddleName() {
        return middleName;
    }
    
    public void Person.setMiddleName(String middleName) {
        this.middleName = middleName;
    }
    
    public String Person.getLogin() {
        return login;
    }
    
    public void Person.setLogin(String login) {
        this.login = login;
    }
    
    public String Person.getPhone() {
        return phone;
    }
    
    public void Person.setPhone(String phone) {
        this.phone = phone;
    }
    
    public Calendar Person.getRegdate() {
        return regdate;
    }
    
    public void Person.setRegdate(Calendar regdate) {
        this.regdate = regdate;
    }
    
    public String Person.getEmail() {
        return email;
    }
    
    public void Person.setEmail(String email) {
        this.email = email;
    }
    
    public boolean Person.isMaleFemale() {
        return maleFemale;
    }
    
    public void Person.setMaleFemale(boolean maleFemale) {
        this.maleFemale = maleFemale;
    }
    
    public Calendar Person.getBirthDate() {
        return birthDate;
    }
    
    public void Person.setBirthDate(Calendar birthDate) {
        this.birthDate = birthDate;
    }
    
    public String Person.getCountry() {
        return country;
    }
    
    public void Person.setCountry(String country) {
        this.country = country;
    }
    
    public String Person.getCity() {
        return city;
    }
    
    public void Person.setCity(String city) {
        this.city = city;
    }
    
    public String Person.getAdress() {
        return adress;
    }
    
    public void Person.setAdress(String adress) {
        this.adress = adress;
    }
    
}