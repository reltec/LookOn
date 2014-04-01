// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.NotesType;
import com.reltecsoft.lookon.domain.NotesTypeDataOnDemand;
import com.reltecsoft.lookon.repository.NotesTypeRepository;
import com.reltecsoft.lookon.service.NotesTypeService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect NotesTypeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: NotesTypeDataOnDemand: @Component;
    
    private Random NotesTypeDataOnDemand.rnd = new SecureRandom();
    
    private List<NotesType> NotesTypeDataOnDemand.data;
    
    @Autowired
    NotesTypeService NotesTypeDataOnDemand.notesTypeService;
    
    @Autowired
    NotesTypeRepository NotesTypeDataOnDemand.notesTypeRepository;
    
    public NotesType NotesTypeDataOnDemand.getNewTransientNotesType(int index) {
        NotesType obj = new NotesType();
        setName(obj, index);
        return obj;
    }
    
    public void NotesTypeDataOnDemand.setName(NotesType obj, int index) {
        String name = "name_" + index;
        if (name.length() > 20) {
            name = new Random().nextInt(10) + name.substring(1, 20);
        }
        obj.setName(name);
    }
    
    public NotesType NotesTypeDataOnDemand.getSpecificNotesType(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        NotesType obj = data.get(index);
        Long id = obj.getId();
        return notesTypeService.findNotesType(id);
    }
    
    public NotesType NotesTypeDataOnDemand.getRandomNotesType() {
        init();
        NotesType obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return notesTypeService.findNotesType(id);
    }
    
    public boolean NotesTypeDataOnDemand.modifyNotesType(NotesType obj) {
        return false;
    }
    
    public void NotesTypeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = notesTypeService.findNotesTypeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'NotesType' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<NotesType>();
        for (int i = 0; i < 10; i++) {
            NotesType obj = getNewTransientNotesType(i);
            try {
                notesTypeService.saveNotesType(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            notesTypeRepository.flush();
            data.add(obj);
        }
    }
    
}
