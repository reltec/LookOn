// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.UserWorkDataOnDemand;
import com.reltecsoft.lookon.domain.UserWorkIntegrationTest;
import com.reltecsoft.lookon.repository.UserWorkRepository;
import com.reltecsoft.lookon.service.UserWorkService;
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

privileged aspect UserWorkIntegrationTest_Roo_IntegrationTest {
    
    declare @type: UserWorkIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: UserWorkIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: UserWorkIntegrationTest: @Transactional;
    
    @Autowired
    UserWorkDataOnDemand UserWorkIntegrationTest.dod;
    
    @Autowired
    UserWorkService UserWorkIntegrationTest.userWorkService;
    
    @Autowired
    UserWorkRepository UserWorkIntegrationTest.userWorkRepository;
    
    @Test
    public void UserWorkIntegrationTest.testCountAllUserWorks() {
        Assert.assertNotNull("Data on demand for 'UserWork' failed to initialize correctly", dod.getRandomUserWork());
        long count = userWorkService.countAllUserWorks();
        Assert.assertTrue("Counter for 'UserWork' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void UserWorkIntegrationTest.testFindUserWork() {
        UserWork obj = dod.getRandomUserWork();
        Assert.assertNotNull("Data on demand for 'UserWork' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UserWork' failed to provide an identifier", id);
        obj = userWorkService.findUserWork(id);
        Assert.assertNotNull("Find method for 'UserWork' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'UserWork' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void UserWorkIntegrationTest.testFindAllUserWorks() {
        Assert.assertNotNull("Data on demand for 'UserWork' failed to initialize correctly", dod.getRandomUserWork());
        long count = userWorkService.countAllUserWorks();
        Assert.assertTrue("Too expensive to perform a find all test for 'UserWork', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<UserWork> result = userWorkService.findAllUserWorks();
        Assert.assertNotNull("Find all method for 'UserWork' illegally returned null", result);
        Assert.assertTrue("Find all method for 'UserWork' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void UserWorkIntegrationTest.testFindUserWorkEntries() {
        Assert.assertNotNull("Data on demand for 'UserWork' failed to initialize correctly", dod.getRandomUserWork());
        long count = userWorkService.countAllUserWorks();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<UserWork> result = userWorkService.findUserWorkEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'UserWork' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'UserWork' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void UserWorkIntegrationTest.testFlush() {
        UserWork obj = dod.getRandomUserWork();
        Assert.assertNotNull("Data on demand for 'UserWork' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UserWork' failed to provide an identifier", id);
        obj = userWorkService.findUserWork(id);
        Assert.assertNotNull("Find method for 'UserWork' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyUserWork(obj);
        Integer currentVersion = obj.getVersion();
        userWorkRepository.flush();
        Assert.assertTrue("Version for 'UserWork' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UserWorkIntegrationTest.testUpdateUserWorkUpdate() {
        UserWork obj = dod.getRandomUserWork();
        Assert.assertNotNull("Data on demand for 'UserWork' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UserWork' failed to provide an identifier", id);
        obj = userWorkService.findUserWork(id);
        boolean modified =  dod.modifyUserWork(obj);
        Integer currentVersion = obj.getVersion();
        UserWork merged = userWorkService.updateUserWork(obj);
        userWorkRepository.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'UserWork' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UserWorkIntegrationTest.testSaveUserWork() {
        Assert.assertNotNull("Data on demand for 'UserWork' failed to initialize correctly", dod.getRandomUserWork());
        UserWork obj = dod.getNewTransientUserWork(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'UserWork' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'UserWork' identifier to be null", obj.getId());
        try {
            userWorkService.saveUserWork(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        userWorkRepository.flush();
        Assert.assertNotNull("Expected 'UserWork' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void UserWorkIntegrationTest.testDeleteUserWork() {
        UserWork obj = dod.getRandomUserWork();
        Assert.assertNotNull("Data on demand for 'UserWork' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UserWork' failed to provide an identifier", id);
        obj = userWorkService.findUserWork(id);
        userWorkService.deleteUserWork(obj);
        userWorkRepository.flush();
        Assert.assertNull("Failed to remove 'UserWork' with identifier '" + id + "'", userWorkService.findUserWork(id));
    }
    
}
