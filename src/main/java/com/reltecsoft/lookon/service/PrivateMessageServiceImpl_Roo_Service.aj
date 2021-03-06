// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.PrivateMessage;
import com.reltecsoft.lookon.repository.PrivateMessageRepository;
import com.reltecsoft.lookon.service.PrivateMessageServiceImpl;
import java.math.BigDecimal;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PrivateMessageServiceImpl_Roo_Service {
    
    declare @type: PrivateMessageServiceImpl: @Service;
    
    declare @type: PrivateMessageServiceImpl: @Transactional;
    
    @Autowired
    PrivateMessageRepository PrivateMessageServiceImpl.privateMessageRepository;
    
    public long PrivateMessageServiceImpl.countAllPrivateMessages() {
        return privateMessageRepository.count();
    }
    
    public void PrivateMessageServiceImpl.deletePrivateMessage(PrivateMessage privateMessage) {
        privateMessageRepository.delete(privateMessage);
    }
    
    public PrivateMessage PrivateMessageServiceImpl.findPrivateMessage(BigDecimal id) {
        return privateMessageRepository.findOne(id);
    }
    
    public List<PrivateMessage> PrivateMessageServiceImpl.findAllPrivateMessages() {
        return privateMessageRepository.findAll();
    }
    
    public List<PrivateMessage> PrivateMessageServiceImpl.findPrivateMessageEntries(int firstResult, int maxResults) {
        return privateMessageRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void PrivateMessageServiceImpl.savePrivateMessage(PrivateMessage privateMessage) {
        privateMessageRepository.save(privateMessage);
    }
    
    public PrivateMessage PrivateMessageServiceImpl.updatePrivateMessage(PrivateMessage privateMessage) {
        return privateMessageRepository.save(privateMessage);
    }
    
}
