// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.ChatMemberDataOnDemand;
import com.reltecsoft.lookon.domain.ChatMemberIntegrationTest;
import com.reltecsoft.lookon.domain.ChatMemberPK;
import com.reltecsoft.lookon.repository.ChatMemberRepository;
import com.reltecsoft.lookon.service.ChatMemberService;
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

privileged aspect ChatMemberIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ChatMemberIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ChatMemberIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: ChatMemberIntegrationTest: @Transactional;
    
    @Autowired
    ChatMemberDataOnDemand ChatMemberIntegrationTest.dod;
    
    @Autowired
    ChatMemberService ChatMemberIntegrationTest.chatMemberService;
    
    @Autowired
    ChatMemberRepository ChatMemberIntegrationTest.chatMemberRepository;
    
    @Test
    public void ChatMemberIntegrationTest.testCountAllChatMembers() {
        Assert.assertNotNull("Data on demand for 'ChatMember' failed to initialize correctly", dod.getRandomChatMember());
        long count = chatMemberService.countAllChatMembers();
        Assert.assertTrue("Counter for 'ChatMember' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ChatMemberIntegrationTest.testFindChatMember() {
        ChatMember obj = dod.getRandomChatMember();
        Assert.assertNotNull("Data on demand for 'ChatMember' failed to initialize correctly", obj);
        ChatMemberPK id = obj.getId();
        Assert.assertNotNull("Data on demand for 'ChatMember' failed to provide an identifier", id);
        obj = chatMemberService.findChatMember(id);
        Assert.assertNotNull("Find method for 'ChatMember' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'ChatMember' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ChatMemberIntegrationTest.testFindAllChatMembers() {
        Assert.assertNotNull("Data on demand for 'ChatMember' failed to initialize correctly", dod.getRandomChatMember());
        long count = chatMemberService.countAllChatMembers();
        Assert.assertTrue("Too expensive to perform a find all test for 'ChatMember', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<ChatMember> result = chatMemberService.findAllChatMembers();
        Assert.assertNotNull("Find all method for 'ChatMember' illegally returned null", result);
        Assert.assertTrue("Find all method for 'ChatMember' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ChatMemberIntegrationTest.testFindChatMemberEntries() {
        Assert.assertNotNull("Data on demand for 'ChatMember' failed to initialize correctly", dod.getRandomChatMember());
        long count = chatMemberService.countAllChatMembers();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<ChatMember> result = chatMemberService.findChatMemberEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'ChatMember' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'ChatMember' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ChatMemberIntegrationTest.testSaveChatMember() {
        Assert.assertNotNull("Data on demand for 'ChatMember' failed to initialize correctly", dod.getRandomChatMember());
        ChatMember obj = dod.getNewTransientChatMember(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'ChatMember' failed to provide a new transient entity", obj);
        try {
            chatMemberService.saveChatMember(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        chatMemberRepository.flush();
        Assert.assertNotNull("Expected 'ChatMember' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ChatMemberIntegrationTest.testDeleteChatMember() {
        ChatMember obj = dod.getRandomChatMember();
        Assert.assertNotNull("Data on demand for 'ChatMember' failed to initialize correctly", obj);
        ChatMemberPK id = obj.getId();
        Assert.assertNotNull("Data on demand for 'ChatMember' failed to provide an identifier", id);
        obj = chatMemberService.findChatMember(id);
        chatMemberService.deleteChatMember(obj);
        chatMemberRepository.flush();
        Assert.assertNull("Failed to remove 'ChatMember' with identifier '" + id + "'", chatMemberService.findChatMember(id));
    }
    
}
