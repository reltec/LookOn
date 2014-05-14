// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtMediaType;
import com.reltecsoft.lookon.domain.DtMediaTypeDataOnDemand;
import com.reltecsoft.lookon.domain.Media;
import com.reltecsoft.lookon.domain.MediaDataOnDemand;
import com.reltecsoft.lookon.repository.MediaRepository;
import com.reltecsoft.lookon.service.MediaService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect MediaDataOnDemand_Roo_DataOnDemand {
    
    declare @type: MediaDataOnDemand: @Component;
    
    private Random MediaDataOnDemand.rnd = new SecureRandom();
    
    private List<Media> MediaDataOnDemand.data;
    
    @Autowired
    DtMediaTypeDataOnDemand MediaDataOnDemand.dtMediaTypeDataOnDemand;
    
    @Autowired
    MediaService MediaDataOnDemand.mediaService;
    
    @Autowired
    MediaRepository MediaDataOnDemand.mediaRepository;
    
    public Media MediaDataOnDemand.getNewTransientMedia(int index) {
        Media obj = new Media();
        setCreateTime(obj, index);
        setLink(obj, index);
        setTypeId(obj, index);
        return obj;
    }
    
    public void MediaDataOnDemand.setCreateTime(Media obj, int index) {
        Calendar createTime = Calendar.getInstance();
        obj.setCreateTime(createTime);
    }
    
    public void MediaDataOnDemand.setLink(Media obj, int index) {
        String link = "link_" + index;
        if (link.length() > 2048) {
            link = link.substring(0, 2048);
        }
        obj.setLink(link);
    }
    
    public void MediaDataOnDemand.setTypeId(Media obj, int index) {
        DtMediaType typeId = dtMediaTypeDataOnDemand.getRandomDtMediaType();
        obj.setTypeId(typeId);
    }
    
    public Media MediaDataOnDemand.getSpecificMedia(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Media obj = data.get(index);
        Long id = obj.getId();
        return mediaService.findMedia(id);
    }
    
    public Media MediaDataOnDemand.getRandomMedia() {
        init();
        Media obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return mediaService.findMedia(id);
    }
    
    public boolean MediaDataOnDemand.modifyMedia(Media obj) {
        return false;
    }
    
    public void MediaDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = mediaService.findMediaEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Media' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Media>();
        for (int i = 0; i < 10; i++) {
            Media obj = getNewTransientMedia(i);
            try {
                mediaService.saveMedia(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            mediaRepository.flush();
            data.add(obj);
        }
    }
    
}
