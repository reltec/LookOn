// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.Album;
import com.reltecsoft.lookon.service.AlbumService;
import java.util.List;

privileged aspect AlbumService_Roo_Service {
    
    public abstract long AlbumService.countAllAlbums();    
    public abstract void AlbumService.deleteAlbum(Album album);    
    public abstract Album AlbumService.findAlbum(Long id);    
    public abstract List<Album> AlbumService.findAllAlbums();    
    public abstract List<Album> AlbumService.findAlbumEntries(int firstResult, int maxResults);    
    public abstract void AlbumService.saveAlbum(Album album);    
    public abstract Album AlbumService.updateAlbum(Album album);    
}
