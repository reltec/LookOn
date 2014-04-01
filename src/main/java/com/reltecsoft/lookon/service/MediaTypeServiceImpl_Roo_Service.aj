// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.MediaType;
import com.reltecsoft.lookon.repository.MediaTypeRepository;
import com.reltecsoft.lookon.service.MediaTypeServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MediaTypeServiceImpl_Roo_Service {
    
    declare @type: MediaTypeServiceImpl: @Service;
    
    declare @type: MediaTypeServiceImpl: @Transactional;
    
    @Autowired
    MediaTypeRepository MediaTypeServiceImpl.mediaTypeRepository;
    
    public long MediaTypeServiceImpl.countAllMediaTypes() {
        return mediaTypeRepository.count();
    }
    
    public void MediaTypeServiceImpl.deleteMediaType(MediaType mediaType) {
        mediaTypeRepository.delete(mediaType);
    }
    
    public MediaType MediaTypeServiceImpl.findMediaType(Long id) {
        return mediaTypeRepository.findOne(id);
    }
    
    public List<MediaType> MediaTypeServiceImpl.findAllMediaTypes() {
        return mediaTypeRepository.findAll();
    }
    
    public List<MediaType> MediaTypeServiceImpl.findMediaTypeEntries(int firstResult, int maxResults) {
        return mediaTypeRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void MediaTypeServiceImpl.saveMediaType(MediaType mediaType) {
        mediaTypeRepository.save(mediaType);
    }
    
    public MediaType MediaTypeServiceImpl.updateMediaType(MediaType mediaType) {
        return mediaTypeRepository.save(mediaType);
    }
    
}