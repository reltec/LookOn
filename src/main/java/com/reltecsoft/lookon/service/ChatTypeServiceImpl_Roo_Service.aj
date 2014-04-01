// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.ChatType;
import com.reltecsoft.lookon.repository.ChatTypeRepository;
import com.reltecsoft.lookon.service.ChatTypeServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ChatTypeServiceImpl_Roo_Service {
    
    declare @type: ChatTypeServiceImpl: @Service;
    
    declare @type: ChatTypeServiceImpl: @Transactional;
    
    @Autowired
    ChatTypeRepository ChatTypeServiceImpl.chatTypeRepository;
    
    public long ChatTypeServiceImpl.countAllChatTypes() {
        return chatTypeRepository.count();
    }
    
    public void ChatTypeServiceImpl.deleteChatType(ChatType chatType) {
        chatTypeRepository.delete(chatType);
    }
    
    public ChatType ChatTypeServiceImpl.findChatType(Long id) {
        return chatTypeRepository.findOne(id);
    }
    
    public List<ChatType> ChatTypeServiceImpl.findAllChatTypes() {
        return chatTypeRepository.findAll();
    }
    
    public List<ChatType> ChatTypeServiceImpl.findChatTypeEntries(int firstResult, int maxResults) {
        return chatTypeRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void ChatTypeServiceImpl.saveChatType(ChatType chatType) {
        chatTypeRepository.save(chatType);
    }
    
    public ChatType ChatTypeServiceImpl.updateChatType(ChatType chatType) {
        return chatTypeRepository.save(chatType);
    }
    
}
