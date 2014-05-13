// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.MediaDataOnDemand;
import com.reltecsoft.lookon.domain.Person;
import com.reltecsoft.lookon.domain.PersonDataOnDemand;
import com.reltecsoft.lookon.domain.PrivateMessage;
import com.reltecsoft.lookon.domain.PrivateMessageDataOnDemand;
import com.reltecsoft.lookon.repository.PrivateMessageRepository;
import com.reltecsoft.lookon.service.PrivateMessageService;
import java.math.BigDecimal;
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

privileged aspect PrivateMessageDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PrivateMessageDataOnDemand: @Component;
    
    private Random PrivateMessageDataOnDemand.rnd = new SecureRandom();
    
    private List<PrivateMessage> PrivateMessageDataOnDemand.data;
    
    @Autowired
    PersonDataOnDemand PrivateMessageDataOnDemand.personDataOnDemand;
    
    @Autowired
    MediaDataOnDemand PrivateMessageDataOnDemand.mediaDataOnDemand;
    
    @Autowired
    PrivateMessageService PrivateMessageDataOnDemand.privateMessageService;
    
    @Autowired
    PrivateMessageRepository PrivateMessageDataOnDemand.privateMessageRepository;
    
    public PrivateMessage PrivateMessageDataOnDemand.getNewTransientPrivateMessage(int index) {
        PrivateMessage obj = new PrivateMessage();
        setAuthorId(obj, index);
        setDateMessage(obj, index);
        setMessageText(obj, index);
        setRecipientId(obj, index);
        return obj;
    }
    
    public void PrivateMessageDataOnDemand.setAuthorId(PrivateMessage obj, int index) {
        Person authorId = personDataOnDemand.getRandomPerson();
        obj.setAuthorId(authorId);
    }
    
    public void PrivateMessageDataOnDemand.setDateMessage(PrivateMessage obj, int index) {
        Calendar dateMessage = Calendar.getInstance();
        obj.setDateMessage(dateMessage);
    }
    
    public void PrivateMessageDataOnDemand.setMessageText(PrivateMessage obj, int index) {
        String messageText = "messageText_" + index;
        if (messageText.length() > 2048) {
            messageText = messageText.substring(0, 2048);
        }
        obj.setMessageText(messageText);
    }
    
    public void PrivateMessageDataOnDemand.setRecipientId(PrivateMessage obj, int index) {
        Person recipientId = personDataOnDemand.getRandomPerson();
        obj.setRecipientId(recipientId);
    }
    
    public PrivateMessage PrivateMessageDataOnDemand.getSpecificPrivateMessage(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        PrivateMessage obj = data.get(index);
        BigDecimal id = obj.getId();
        return privateMessageService.findPrivateMessage(id);
    }
    
    public PrivateMessage PrivateMessageDataOnDemand.getRandomPrivateMessage() {
        init();
        PrivateMessage obj = data.get(rnd.nextInt(data.size()));
        BigDecimal id = obj.getId();
        return privateMessageService.findPrivateMessage(id);
    }
    
    public boolean PrivateMessageDataOnDemand.modifyPrivateMessage(PrivateMessage obj) {
        return false;
    }
    
    public void PrivateMessageDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = privateMessageService.findPrivateMessageEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'PrivateMessage' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<PrivateMessage>();
        for (int i = 0; i < 10; i++) {
            PrivateMessage obj = getNewTransientPrivateMessage(i);
            try {
                privateMessageService.savePrivateMessage(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            privateMessageRepository.flush();
            data.add(obj);
        }
    }
    
}