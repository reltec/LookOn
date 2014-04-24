// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtChatStatus;
import com.reltecsoft.lookon.domain.DtChatStatusDataOnDemand;
import com.reltecsoft.lookon.repository.ChatStatusRepository;
import com.reltecsoft.lookon.service.ChatStatusService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DtChatStatusDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DtChatStatusDataOnDemand: @Component;
    
    private Random DtChatStatusDataOnDemand.rnd = new SecureRandom();
    
    private List<DtChatStatus> DtChatStatusDataOnDemand.data;
    
    @Autowired
    ChatStatusService DtChatStatusDataOnDemand.chatStatusService;
    
    @Autowired
    ChatStatusRepository DtChatStatusDataOnDemand.chatStatusRepository;
    
    public DtChatStatus DtChatStatusDataOnDemand.getNewTransientDtChatStatus(int index) {
        DtChatStatus obj = new DtChatStatus();
        setName(obj, index);
        return obj;
    }
    
    public void DtChatStatusDataOnDemand.setName(DtChatStatus obj, int index) {
        String name = "name_" + index;
        if (name.length() > 50) {
            name = name.substring(0, 50);
        }
        obj.setName(name);
    }
    
    public DtChatStatus DtChatStatusDataOnDemand.getSpecificDtChatStatus(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DtChatStatus obj = data.get(index);
        Integer id = obj.getId();
        return chatStatusService.findDtChatStatus(id);
    }
    
    public DtChatStatus DtChatStatusDataOnDemand.getRandomDtChatStatus() {
        init();
        DtChatStatus obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getId();
        return chatStatusService.findDtChatStatus(id);
    }
    
    public boolean DtChatStatusDataOnDemand.modifyDtChatStatus(DtChatStatus obj) {
        return false;
    }
    
    public void DtChatStatusDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = chatStatusService.findDtChatStatusEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DtChatStatus' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DtChatStatus>();
        for (int i = 0; i < 10; i++) {
            DtChatStatus obj = getNewTransientDtChatStatus(i);
            try {
                chatStatusService.saveDtChatStatus(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            chatStatusRepository.flush();
            data.add(obj);
        }
    }
    
}
