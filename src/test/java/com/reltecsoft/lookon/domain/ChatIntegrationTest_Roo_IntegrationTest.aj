// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.ChatDataOnDemand;
import com.reltecsoft.lookon.domain.ChatIntegrationTest;
import com.reltecsoft.lookon.repository.ChatRepository;
import com.reltecsoft.lookon.service.ChatService;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ChatIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ChatIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ChatIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: ChatIntegrationTest: @Transactional;
    
    @Autowired
    ChatDataOnDemand ChatIntegrationTest.dod;
    
    @Autowired
    ChatService ChatIntegrationTest.chatService;
    
    @Autowired
    ChatRepository ChatIntegrationTest.chatRepository;
    
    @Test
    public void ChatIntegrationTest.testCountAllChats() {
        Assert.assertNotNull("Data on demand for 'Chat' failed to initialize correctly", dod.getRandomChat());
        long count = chatService.countAllChats();
        Assert.assertTrue("Counter for 'Chat' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ChatIntegrationTest.testFindChat() {
        Chat obj = dod.getRandomChat();
        Assert.assertNotNull("Data on demand for 'Chat' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Chat' failed to provide an identifier", id);
        obj = chatService.findChat(id);
        Assert.assertNotNull("Find method for 'Chat' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Chat' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ChatIntegrationTest.testFindAllChats() {
        Assert.assertNotNull("Data on demand for 'Chat' failed to initialize correctly", dod.getRandomChat());
        long count = chatService.countAllChats();
        Assert.assertTrue("Too expensive to perform a find all test for 'Chat', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Chat> result = chatService.findAllChats();
        Assert.assertNotNull("Find all method for 'Chat' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Chat' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ChatIntegrationTest.testFindChatEntries() {
        Assert.assertNotNull("Data on demand for 'Chat' failed to initialize correctly", dod.getRandomChat());
        long count = chatService.countAllChats();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Chat> result = chatService.findChatEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Chat' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Chat' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ChatIntegrationTest.testFlush() {
        Chat obj = dod.getRandomChat();
        Assert.assertNotNull("Data on demand for 'Chat' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Chat' failed to provide an identifier", id);
        obj = chatService.findChat(id);
        Assert.assertNotNull("Find method for 'Chat' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyChat(obj);
        Integer currentVersion = obj.getVersion();
        chatRepository.flush();
        Assert.assertTrue("Version for 'Chat' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ChatIntegrationTest.testUpdateChatUpdate() {
        Chat obj = dod.getRandomChat();
        Assert.assertNotNull("Data on demand for 'Chat' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Chat' failed to provide an identifier", id);
        obj = chatService.findChat(id);
        boolean modified =  dod.modifyChat(obj);
        Integer currentVersion = obj.getVersion();
        Chat merged = chatService.updateChat(obj);
        chatRepository.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Chat' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ChatIntegrationTest.testSaveChat() {
        Assert.assertNotNull("Data on demand for 'Chat' failed to initialize correctly", dod.getRandomChat());
        Chat obj = dod.getNewTransientChat(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Chat' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Chat' identifier to be null", obj.getId());
        try {
            chatService.saveChat(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        chatRepository.flush();
        Assert.assertNotNull("Expected 'Chat' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ChatIntegrationTest.testDeleteChat() {
        Chat obj = dod.getRandomChat();
        Assert.assertNotNull("Data on demand for 'Chat' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Chat' failed to provide an identifier", id);
        obj = chatService.findChat(id);
        chatService.deleteChat(obj);
        chatRepository.flush();
        Assert.assertNull("Failed to remove 'Chat' with identifier '" + id + "'", chatService.findChat(id));
    }
    
}
