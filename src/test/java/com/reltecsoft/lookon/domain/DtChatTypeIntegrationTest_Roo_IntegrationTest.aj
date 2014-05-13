// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtChatTypeDataOnDemand;
import com.reltecsoft.lookon.domain.DtChatTypeIntegrationTest;
import com.reltecsoft.lookon.repository.ChatTypeRepository;
import com.reltecsoft.lookon.service.ChatTypeService;
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

privileged aspect DtChatTypeIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DtChatTypeIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DtChatTypeIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DtChatTypeIntegrationTest: @Transactional;
    
    @Autowired
    DtChatTypeDataOnDemand DtChatTypeIntegrationTest.dod;
    
    @Autowired
    ChatTypeService DtChatTypeIntegrationTest.chatTypeService;
    
    @Autowired
    ChatTypeRepository DtChatTypeIntegrationTest.chatTypeRepository;
    
    @Test
    public void DtChatTypeIntegrationTest.testCountAllDtChatTypes() {
        Assert.assertNotNull("Data on demand for 'DtChatType' failed to initialize correctly", dod.getRandomDtChatType());
        long count = chatTypeService.countAllDtChatTypes();
        Assert.assertTrue("Counter for 'DtChatType' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DtChatTypeIntegrationTest.testFindDtChatType() {
        DtChatType obj = dod.getRandomDtChatType();
        Assert.assertNotNull("Data on demand for 'DtChatType' failed to initialize correctly", obj);
        Integer id = obj.getId();
        Assert.assertNotNull("Data on demand for 'DtChatType' failed to provide an identifier", id);
        obj = chatTypeService.findDtChatType(id);
        Assert.assertNotNull("Find method for 'DtChatType' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DtChatType' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void DtChatTypeIntegrationTest.testFindAllDtChatTypes() {
        Assert.assertNotNull("Data on demand for 'DtChatType' failed to initialize correctly", dod.getRandomDtChatType());
        long count = chatTypeService.countAllDtChatTypes();
        Assert.assertTrue("Too expensive to perform a find all test for 'DtChatType', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DtChatType> result = chatTypeService.findAllDtChatTypes();
        Assert.assertNotNull("Find all method for 'DtChatType' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DtChatType' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DtChatTypeIntegrationTest.testFindDtChatTypeEntries() {
        Assert.assertNotNull("Data on demand for 'DtChatType' failed to initialize correctly", dod.getRandomDtChatType());
        long count = chatTypeService.countAllDtChatTypes();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DtChatType> result = chatTypeService.findDtChatTypeEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DtChatType' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DtChatType' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DtChatTypeIntegrationTest.testSaveDtChatType() {
        Assert.assertNotNull("Data on demand for 'DtChatType' failed to initialize correctly", dod.getRandomDtChatType());
        DtChatType obj = dod.getNewTransientDtChatType(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DtChatType' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DtChatType' identifier to be null", obj.getId());
        try {
            chatTypeService.saveDtChatType(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        chatTypeRepository.flush();
        Assert.assertNotNull("Expected 'DtChatType' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void DtChatTypeIntegrationTest.testDeleteDtChatType() {
        DtChatType obj = dod.getRandomDtChatType();
        Assert.assertNotNull("Data on demand for 'DtChatType' failed to initialize correctly", obj);
        Integer id = obj.getId();
        Assert.assertNotNull("Data on demand for 'DtChatType' failed to provide an identifier", id);
        obj = chatTypeService.findDtChatType(id);
        chatTypeService.deleteDtChatType(obj);
        chatTypeRepository.flush();
        Assert.assertNull("Failed to remove 'DtChatType' with identifier '" + id + "'", chatTypeService.findDtChatType(id));
    }
    
}
