// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Album;
import com.reltecsoft.lookon.domain.AlbumMedia;
import com.reltecsoft.lookon.domain.Media;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect AlbumMedia_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "album_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Album AlbumMedia.albumId;
    
    @ManyToOne
    @JoinColumn(name = "media_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Media AlbumMedia.mediaId;
    
    public Album AlbumMedia.getAlbumId() {
        return albumId;
    }
    
    public void AlbumMedia.setAlbumId(Album albumId) {
        this.albumId = albumId;
    }
    
    public Media AlbumMedia.getMediaId() {
        return mediaId;
    }
    
    public void AlbumMedia.setMediaId(Media mediaId) {
        this.mediaId = mediaId;
    }
    
}
