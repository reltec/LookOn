// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Album;
import com.reltecsoft.lookon.domain.AlbumDataOnDemand;
import com.reltecsoft.lookon.domain.MediaType;
import com.reltecsoft.lookon.domain.MediaTypeDataOnDemand;
import com.reltecsoft.lookon.domain.Person;
import com.reltecsoft.lookon.domain.PersonDataOnDemand;
import com.reltecsoft.lookon.repository.AlbumRepository;
import com.reltecsoft.lookon.service.AlbumService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect AlbumDataOnDemand_Roo_DataOnDemand {
    
    declare @type: AlbumDataOnDemand: @Component;
    
    private Random AlbumDataOnDemand.rnd = new SecureRandom();
    
    private List<Album> AlbumDataOnDemand.data;
    
    @Autowired
    MediaTypeDataOnDemand AlbumDataOnDemand.mediaTypeDataOnDemand;
    
    @Autowired
    PersonDataOnDemand AlbumDataOnDemand.personDataOnDemand;
    
    @Autowired
    AlbumService AlbumDataOnDemand.albumService;
    
    @Autowired
    AlbumRepository AlbumDataOnDemand.albumRepository;
    
    public Album AlbumDataOnDemand.getNewTransientAlbum(int index) {
        Album obj = new Album();
        setCreateTime(obj, index);
        setMediaType(obj, index);
        setName(obj, index);
        setPerson(obj, index);
        return obj;
    }
    
    public void AlbumDataOnDemand.setCreateTime(Album obj, int index) {
        Date createTime = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setCreateTime(createTime);
    }
    
    public void AlbumDataOnDemand.setMediaType(Album obj, int index) {
        MediaType mediaType = mediaTypeDataOnDemand.getRandomMediaType();
        obj.setMediaType(mediaType);
    }
    
    public void AlbumDataOnDemand.setName(Album obj, int index) {
        String name = "name_" + index;
        if (name.length() > 50) {
            name = name.substring(0, 50);
        }
        obj.setName(name);
    }
    
    public void AlbumDataOnDemand.setPerson(Album obj, int index) {
        Person person = personDataOnDemand.getRandomPerson();
        obj.setPerson(person);
    }
    
    public Album AlbumDataOnDemand.getSpecificAlbum(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Album obj = data.get(index);
        Long id = obj.getId();
        return albumService.findAlbum(id);
    }
    
    public Album AlbumDataOnDemand.getRandomAlbum() {
        init();
        Album obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return albumService.findAlbum(id);
    }
    
    public boolean AlbumDataOnDemand.modifyAlbum(Album obj) {
        return false;
    }
    
    public void AlbumDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = albumService.findAlbumEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Album' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Album>();
        for (int i = 0; i < 10; i++) {
            Album obj = getNewTransientAlbum(i);
            try {
                albumService.saveAlbum(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            albumRepository.flush();
            data.add(obj);
        }
    }
    
}