// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtVacancyStatus;
import com.reltecsoft.lookon.domain.DtVacancyStatusDataOnDemand;
import com.reltecsoft.lookon.repository.VacancyStatusRepository;
import com.reltecsoft.lookon.service.VacancyStatusService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DtVacancyStatusDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DtVacancyStatusDataOnDemand: @Component;
    
    private Random DtVacancyStatusDataOnDemand.rnd = new SecureRandom();
    
    private List<DtVacancyStatus> DtVacancyStatusDataOnDemand.data;
    
    @Autowired
    VacancyStatusService DtVacancyStatusDataOnDemand.vacancyStatusService;
    
    @Autowired
    VacancyStatusRepository DtVacancyStatusDataOnDemand.vacancyStatusRepository;
    
    public DtVacancyStatus DtVacancyStatusDataOnDemand.getNewTransientDtVacancyStatus(int index) {
        DtVacancyStatus obj = new DtVacancyStatus();
        setName(obj, index);
        return obj;
    }
    
    public void DtVacancyStatusDataOnDemand.setName(DtVacancyStatus obj, int index) {
        String name = "name_" + index;
        if (name.length() > 50) {
            name = name.substring(0, 50);
        }
        obj.setName(name);
    }
    
    public DtVacancyStatus DtVacancyStatusDataOnDemand.getSpecificDtVacancyStatus(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DtVacancyStatus obj = data.get(index);
        Integer id = obj.getId();
        return vacancyStatusService.findDtVacancyStatus(id);
    }
    
    public DtVacancyStatus DtVacancyStatusDataOnDemand.getRandomDtVacancyStatus() {
        init();
        DtVacancyStatus obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getId();
        return vacancyStatusService.findDtVacancyStatus(id);
    }
    
    public boolean DtVacancyStatusDataOnDemand.modifyDtVacancyStatus(DtVacancyStatus obj) {
        return false;
    }
    
    public void DtVacancyStatusDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = vacancyStatusService.findDtVacancyStatusEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DtVacancyStatus' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DtVacancyStatus>();
        for (int i = 0; i < 10; i++) {
            DtVacancyStatus obj = getNewTransientDtVacancyStatus(i);
            try {
                vacancyStatusService.saveDtVacancyStatus(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            vacancyStatusRepository.flush();
            data.add(obj);
        }
    }
    
}
