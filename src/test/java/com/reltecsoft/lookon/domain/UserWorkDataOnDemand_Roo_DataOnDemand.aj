// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.MediaDataOnDemand;
import com.reltecsoft.lookon.domain.PersonDataOnDemand;
import com.reltecsoft.lookon.domain.UserWork;
import com.reltecsoft.lookon.domain.UserWorkDataOnDemand;
import com.reltecsoft.lookon.repository.UserWorkRepository;
import com.reltecsoft.lookon.service.UserWorkService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect UserWorkDataOnDemand_Roo_DataOnDemand {
    
    declare @type: UserWorkDataOnDemand: @Component;
    
    private Random UserWorkDataOnDemand.rnd = new SecureRandom();
    
    private List<UserWork> UserWorkDataOnDemand.data;
    
    @Autowired
    MediaDataOnDemand UserWorkDataOnDemand.mediaDataOnDemand;
    
    @Autowired
    PersonDataOnDemand UserWorkDataOnDemand.personDataOnDemand;
    
    @Autowired
    UserWorkService UserWorkDataOnDemand.userWorkService;
    
    @Autowired
    UserWorkRepository UserWorkDataOnDemand.userWorkRepository;
    
    public UserWork UserWorkDataOnDemand.getNewTransientUserWork(int index) {
        UserWork obj = new UserWork();
        setEducation(obj, index);
        setExperience(obj, index);
        setExtPosition(obj, index);
        setHobbies(obj, index);
        setLanguages(obj, index);
        setPassportDate(obj, index);
        setPassportNum(obj, index);
        setPassportWhere(obj, index);
        setPersonality(obj, index);
        setSkills(obj, index);
        setTaxNumber(obj, index);
        return obj;
    }
    
    public void UserWorkDataOnDemand.setEducation(UserWork obj, int index) {
        String education = "education_" + index;
        if (education.length() > 255) {
            education = education.substring(0, 255);
        }
        obj.setEducation(education);
    }
    
    public void UserWorkDataOnDemand.setExperience(UserWork obj, int index) {
        String experience = "experience_" + index;
        if (experience.length() > 255) {
            experience = experience.substring(0, 255);
        }
        obj.setExperience(experience);
    }
    
    public void UserWorkDataOnDemand.setExtPosition(UserWork obj, int index) {
        String extPosition = "extPosition_" + index;
        if (extPosition.length() > 255) {
            extPosition = extPosition.substring(0, 255);
        }
        obj.setExtPosition(extPosition);
    }
    
    public void UserWorkDataOnDemand.setHobbies(UserWork obj, int index) {
        String hobbies = "hobbies_" + index;
        if (hobbies.length() > 255) {
            hobbies = hobbies.substring(0, 255);
        }
        obj.setHobbies(hobbies);
    }
    
    public void UserWorkDataOnDemand.setLanguages(UserWork obj, int index) {
        String languages = "languages_" + index;
        if (languages.length() > 255) {
            languages = languages.substring(0, 255);
        }
        obj.setLanguages(languages);
    }
    
    public void UserWorkDataOnDemand.setPassportDate(UserWork obj, int index) {
        Date passportDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setPassportDate(passportDate);
    }
    
    public void UserWorkDataOnDemand.setPassportNum(UserWork obj, int index) {
        String passportNum = "passportNum_" + index;
        if (passportNum.length() > 50) {
            passportNum = passportNum.substring(0, 50);
        }
        obj.setPassportNum(passportNum);
    }
    
    public void UserWorkDataOnDemand.setPassportWhere(UserWork obj, int index) {
        String passportWhere = "passportWhere_" + index;
        if (passportWhere.length() > 50) {
            passportWhere = passportWhere.substring(0, 50);
        }
        obj.setPassportWhere(passportWhere);
    }
    
    public void UserWorkDataOnDemand.setPersonality(UserWork obj, int index) {
        String personality = "personality_" + index;
        if (personality.length() > 255) {
            personality = personality.substring(0, 255);
        }
        obj.setPersonality(personality);
    }
    
    public void UserWorkDataOnDemand.setSkills(UserWork obj, int index) {
        String skills = "skills_" + index;
        if (skills.length() > 255) {
            skills = skills.substring(0, 255);
        }
        obj.setSkills(skills);
    }
    
    public void UserWorkDataOnDemand.setTaxNumber(UserWork obj, int index) {
        String taxNumber = "taxNumber_" + index;
        if (taxNumber.length() > 50) {
            taxNumber = taxNumber.substring(0, 50);
        }
        obj.setTaxNumber(taxNumber);
    }
    
    public UserWork UserWorkDataOnDemand.getSpecificUserWork(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        UserWork obj = data.get(index);
        Long id = obj.getId();
        return userWorkService.findUserWork(id);
    }
    
    public UserWork UserWorkDataOnDemand.getRandomUserWork() {
        init();
        UserWork obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return userWorkService.findUserWork(id);
    }
    
    public boolean UserWorkDataOnDemand.modifyUserWork(UserWork obj) {
        return false;
    }
    
    public void UserWorkDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = userWorkService.findUserWorkEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'UserWork' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<UserWork>();
        for (int i = 0; i < 10; i++) {
            UserWork obj = getNewTransientUserWork(i);
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
            data.add(obj);
        }
    }
    
}