// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Album;
import com.reltecsoft.lookon.domain.Media;
import com.reltecsoft.lookon.domain.MediaType;
import com.reltecsoft.lookon.domain.Person;
import java.util.Date;
import java.util.Set;

privileged aspect Album_Roo_JavaBean {
    
    public String Album.getName() {
        return this.name;
    }
    
    public void Album.setName(String name) {
        this.name = name;
    }
    
    public Date Album.getCreateTime() {
        return this.createTime;
    }
    
    public void Album.setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    
    public MediaType Album.getMediaType() {
        return this.mediaType;
    }
    
    public void Album.setMediaType(MediaType mediaType) {
        this.mediaType = mediaType;
    }
    
    public Person Album.getPerson() {
        return this.person;
    }
    
    public void Album.setPerson(Person person) {
        this.person = person;
    }
    
    public Set<Media> Album.getPersonFiles() {
        return this.personFiles;
    }
    
    public void Album.setPersonFiles(Set<Media> personFiles) {
        this.personFiles = personFiles;
    }
    
}