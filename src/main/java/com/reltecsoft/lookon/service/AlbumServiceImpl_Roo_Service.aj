// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.Album;
import com.reltecsoft.lookon.repository.AlbumRepository;
import com.reltecsoft.lookon.service.AlbumServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AlbumServiceImpl_Roo_Service {
    
    declare @type: AlbumServiceImpl: @Service;
    
    declare @type: AlbumServiceImpl: @Transactional;
    
    @Autowired
    AlbumRepository AlbumServiceImpl.albumRepository;
    
    public long AlbumServiceImpl.countAllAlbums() {
        return albumRepository.count();
    }
    
    public void AlbumServiceImpl.deleteAlbum(Album album) {
        albumRepository.delete(album);
    }
    
    public Album AlbumServiceImpl.findAlbum(Long id) {
        return albumRepository.findOne(id);
    }
    
    public List<Album> AlbumServiceImpl.findAllAlbums() {
        return albumRepository.findAll();
    }
    
    public List<Album> AlbumServiceImpl.findAlbumEntries(int firstResult, int maxResults) {
        return albumRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void AlbumServiceImpl.saveAlbum(Album album) {
        albumRepository.save(album);
    }
    
    public Album AlbumServiceImpl.updateAlbum(Album album) {
        return albumRepository.save(album);
    }
    
}
