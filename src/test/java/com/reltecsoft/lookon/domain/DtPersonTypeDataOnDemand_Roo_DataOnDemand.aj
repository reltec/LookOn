// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtPersonType;
import com.reltecsoft.lookon.domain.DtPersonTypeDataOnDemand;
import com.reltecsoft.lookon.repository.PersonTypeRepository;
import com.reltecsoft.lookon.service.PersonTypeService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DtPersonTypeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DtPersonTypeDataOnDemand: @Component;
    
    private Random DtPersonTypeDataOnDemand.rnd = new SecureRandom();
    
    private List<DtPersonType> DtPersonTypeDataOnDemand.data;
    
    @Autowired
    PersonTypeService DtPersonTypeDataOnDemand.personTypeService;
    
    @Autowired
    PersonTypeRepository DtPersonTypeDataOnDemand.personTypeRepository;
    
    public DtPersonType DtPersonTypeDataOnDemand.getNewTransientDtPersonType(int index) {
        DtPersonType obj = new DtPersonType();
        setTypeName(obj, index);
        return obj;
    }
    
    public void DtPersonTypeDataOnDemand.setTypeName(DtPersonType obj, int index) {
        String typeName = "typeName_" + index;
        if (typeName.length() > 50) {
            typeName = typeName.substring(0, 50);
        }
        obj.setTypeName(typeName);
    }
    
    public DtPersonType DtPersonTypeDataOnDemand.getSpecificDtPersonType(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DtPersonType obj = data.get(index);
        Integer id = obj.getId();
        return personTypeService.findDtPersonType(id);
    }
    
    public DtPersonType DtPersonTypeDataOnDemand.getRandomDtPersonType() {
        init();
        DtPersonType obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getId();
        return personTypeService.findDtPersonType(id);
    }
    
    public boolean DtPersonTypeDataOnDemand.modifyDtPersonType(DtPersonType obj) {
        return false;
    }
    
    public void DtPersonTypeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = personTypeService.findDtPersonTypeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DtPersonType' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DtPersonType>();
        for (int i = 0; i < 10; i++) {
            DtPersonType obj = getNewTransientDtPersonType(i);
            try {
                personTypeService.saveDtPersonType(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            personTypeRepository.flush();
            data.add(obj);
        }
    }
    
}
