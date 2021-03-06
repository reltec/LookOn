// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.CommunityDataOnDemand;
import com.reltecsoft.lookon.domain.CommunityIntegrationTest;
import com.reltecsoft.lookon.repository.CommunityRepository;
import com.reltecsoft.lookon.service.CommunityService;
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

privileged aspect CommunityIntegrationTest_Roo_IntegrationTest {
    
    declare @type: CommunityIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: CommunityIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: CommunityIntegrationTest: @Transactional;
    
    @Autowired
    CommunityDataOnDemand CommunityIntegrationTest.dod;
    
    @Autowired
    CommunityService CommunityIntegrationTest.communityService;
    
    @Autowired
    CommunityRepository CommunityIntegrationTest.communityRepository;
    
    @Test
    public void CommunityIntegrationTest.testCountAllCommunitys() {
        Assert.assertNotNull("Data on demand for 'Community' failed to initialize correctly", dod.getRandomCommunity());
        long count = communityService.countAllCommunitys();
        Assert.assertTrue("Counter for 'Community' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void CommunityIntegrationTest.testFindCommunity() {
        Community obj = dod.getRandomCommunity();
        Assert.assertNotNull("Data on demand for 'Community' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Community' failed to provide an identifier", id);
        obj = communityService.findCommunity(id);
        Assert.assertNotNull("Find method for 'Community' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Community' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void CommunityIntegrationTest.testFindAllCommunitys() {
        Assert.assertNotNull("Data on demand for 'Community' failed to initialize correctly", dod.getRandomCommunity());
        long count = communityService.countAllCommunitys();
        Assert.assertTrue("Too expensive to perform a find all test for 'Community', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Community> result = communityService.findAllCommunitys();
        Assert.assertNotNull("Find all method for 'Community' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Community' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void CommunityIntegrationTest.testFindCommunityEntries() {
        Assert.assertNotNull("Data on demand for 'Community' failed to initialize correctly", dod.getRandomCommunity());
        long count = communityService.countAllCommunitys();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Community> result = communityService.findCommunityEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Community' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Community' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void CommunityIntegrationTest.testSaveCommunity() {
        Assert.assertNotNull("Data on demand for 'Community' failed to initialize correctly", dod.getRandomCommunity());
        Community obj = dod.getNewTransientCommunity(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Community' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Community' identifier to be null", obj.getId());
        try {
            communityService.saveCommunity(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        communityRepository.flush();
        Assert.assertNotNull("Expected 'Community' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void CommunityIntegrationTest.testDeleteCommunity() {
        Community obj = dod.getRandomCommunity();
        Assert.assertNotNull("Data on demand for 'Community' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Community' failed to provide an identifier", id);
        obj = communityService.findCommunity(id);
        communityService.deleteCommunity(obj);
        communityRepository.flush();
        Assert.assertNull("Failed to remove 'Community' with identifier '" + id + "'", communityService.findCommunity(id));
    }
    
}
