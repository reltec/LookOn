// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtNotesType;
import com.reltecsoft.lookon.domain.DtNotesTypeDataOnDemand;
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

privileged aspect DtNotesTypeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DtNotesTypeDataOnDemand: @Component;
    
    private Random DtNotesTypeDataOnDemand.rnd = new SecureRandom();
    
    private List<DtNotesType> DtNotesTypeDataOnDemand.data;
    
    @Autowired
    NotesTypeService DtNotesTypeDataOnDemand.notesTypeService;
    
    @Autowired
    NotesTypeRepository DtNotesTypeDataOnDemand.notesTypeRepository;
    
    public DtNotesType DtNotesTypeDataOnDemand.getNewTransientDtNotesType(int index) {
        DtNotesType obj = new DtNotesType();
        setName(obj, index);
        return obj;
    }
    
    public void DtNotesTypeDataOnDemand.setName(DtNotesType obj, int index) {
        String name = "name_" + index;
        if (name.length() > 100) {
            name = name.substring(0, 100);
        }
        obj.setName(name);
    }
    
    public DtNotesType DtNotesTypeDataOnDemand.getSpecificDtNotesType(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DtNotesType obj = data.get(index);
        Integer id = obj.getId();
        return notesTypeService.findDtNotesType(id);
    }
    
    public DtNotesType DtNotesTypeDataOnDemand.getRandomDtNotesType() {
        init();
        DtNotesType obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getId();
        return notesTypeService.findDtNotesType(id);
    }
    
    public boolean DtNotesTypeDataOnDemand.modifyDtNotesType(DtNotesType obj) {
        return false;
    }
    
    public void DtNotesTypeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = notesTypeService.findDtNotesTypeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DtNotesType' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DtNotesType>();
        for (int i = 0; i < 10; i++) {
            DtNotesType obj = getNewTransientDtNotesType(i);
            try {
                notesTypeService.saveDtNotesType(obj);
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