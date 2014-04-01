// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.MediaType;
import com.reltecsoft.lookon.domain.MediaTypeDataOnDemand;
import com.reltecsoft.lookon.repository.MediaTypeRepository;
import com.reltecsoft.lookon.service.MediaTypeService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect MediaTypeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: MediaTypeDataOnDemand: @Component;
    
    private Random MediaTypeDataOnDemand.rnd = new SecureRandom();
    
    private List<MediaType> MediaTypeDataOnDemand.data;
    
    @Autowired
    MediaTypeService MediaTypeDataOnDemand.mediaTypeService;
    
    @Autowired
    MediaTypeRepository MediaTypeDataOnDemand.mediaTypeRepository;
    
    public MediaType MediaTypeDataOnDemand.getNewTransientMediaType(int index) {
        MediaType obj = new MediaType();
        setTypeName(obj, index);
        return obj;
    }
    
    public void MediaTypeDataOnDemand.setTypeName(MediaType obj, int index) {
        String typeName = "typeName_" + index;
        if (typeName.length() > 20) {
            typeName = new Random().nextInt(10) + typeName.substring(1, 20);
        }
        obj.setTypeName(typeName);
    }
    
    public MediaType MediaTypeDataOnDemand.getSpecificMediaType(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        MediaType obj = data.get(index);
        Long id = obj.getId();
        return mediaTypeService.findMediaType(id);
    }
    
    public MediaType MediaTypeDataOnDemand.getRandomMediaType() {
        init();
        MediaType obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return mediaTypeService.findMediaType(id);
    }
    
    public boolean MediaTypeDataOnDemand.modifyMediaType(MediaType obj) {
        return false;
    }
    
    public void MediaTypeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = mediaTypeService.findMediaTypeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'MediaType' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<MediaType>();
        for (int i = 0; i < 10; i++) {
            MediaType obj = getNewTransientMediaType(i);
            try {
                mediaTypeService.saveMediaType(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            mediaTypeRepository.flush();
            data.add(obj);
        }
    }
    
}
