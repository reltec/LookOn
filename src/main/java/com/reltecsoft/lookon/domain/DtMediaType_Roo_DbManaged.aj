// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Album;
import com.reltecsoft.lookon.domain.DtMediaType;
import com.reltecsoft.lookon.domain.Media;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect DtMediaType_Roo_DbManaged {
    
    @OneToMany(mappedBy = "typeId", cascade = CascadeType.ALL)
    private Set<Album> DtMediaType.albums;
    
    @OneToMany(mappedBy = "typeId", cascade = CascadeType.ALL)
    private Set<Media> DtMediaType.medias;
    
    @Column(name = "type_name", columnDefinition = "nvarchar", length = 20)
    @NotNull
    private String DtMediaType.typeName;
    
    public Set<Album> DtMediaType.getAlbums() {
        return albums;
    }
    
    public void DtMediaType.setAlbums(Set<Album> albums) {
        this.albums = albums;
    }
    
    public Set<Media> DtMediaType.getMedias() {
        return medias;
    }
    
    public void DtMediaType.setMedias(Set<Media> medias) {
        this.medias = medias;
    }
    
    public String DtMediaType.getTypeName() {
        return typeName;
    }
    
    public void DtMediaType.setTypeName(String typeName) {
        this.typeName = typeName;
    }
    
}
