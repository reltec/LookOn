// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.MediaDataOnDemand;
import com.reltecsoft.lookon.domain.Resume;
import com.reltecsoft.lookon.domain.ResumeDataOnDemand;
import com.reltecsoft.lookon.domain.Workspace;
import com.reltecsoft.lookon.domain.WorkspaceDataOnDemand;
import com.reltecsoft.lookon.repository.ResumeRepository;
import com.reltecsoft.lookon.service.ResumeService;
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

privileged aspect ResumeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ResumeDataOnDemand: @Component;
    
    private Random ResumeDataOnDemand.rnd = new SecureRandom();
    
    private List<Resume> ResumeDataOnDemand.data;
    
    @Autowired
    MediaDataOnDemand ResumeDataOnDemand.mediaDataOnDemand;
    
    @Autowired
    WorkspaceDataOnDemand ResumeDataOnDemand.workspaceDataOnDemand;
    
    @Autowired
    ResumeService ResumeDataOnDemand.resumeService;
    
    @Autowired
    ResumeRepository ResumeDataOnDemand.resumeRepository;
    
    public Resume ResumeDataOnDemand.getNewTransientResume(int index) {
        Resume obj = new Resume();
        setAdress(obj, index);
        setCity(obj, index);
        setCountry(obj, index);
        setEducation(obj, index);
        setExperience(obj, index);
        setExtPosition(obj, index);
        setHobby(obj, index);
        setLanguage(obj, index);
        setPassportDate(obj, index);
        setPassportNum(obj, index);
        setPassportWhere(obj, index);
        setPersonality(obj, index);
        setSchool(obj, index);
        setSkills(obj, index);
        setTaxNumber(obj, index);
        setUniversity(obj, index);
        setWorkspaceId(obj, index);
        return obj;
    }
    
    public void ResumeDataOnDemand.setAdress(Resume obj, int index) {
        String adress = "adress_" + index;
        if (adress.length() > 255) {
            adress = adress.substring(0, 255);
        }
        obj.setAdress(adress);
    }
    
    public void ResumeDataOnDemand.setCity(Resume obj, int index) {
        String city = "city_" + index;
        if (city.length() > 255) {
            city = city.substring(0, 255);
        }
        obj.setCity(city);
    }
    
    public void ResumeDataOnDemand.setCountry(Resume obj, int index) {
        String country = "country_" + index;
        if (country.length() > 50) {
            country = country.substring(0, 50);
        }
        obj.setCountry(country);
    }
    
    public void ResumeDataOnDemand.setEducation(Resume obj, int index) {
        String education = "education_" + index;
        if (education.length() > 255) {
            education = education.substring(0, 255);
        }
        obj.setEducation(education);
    }
    
    public void ResumeDataOnDemand.setExperience(Resume obj, int index) {
        String experience = "experience_" + index;
        if (experience.length() > 255) {
            experience = experience.substring(0, 255);
        }
        obj.setExperience(experience);
    }
    
    public void ResumeDataOnDemand.setExtPosition(Resume obj, int index) {
        String extPosition = "extPosition_" + index;
        if (extPosition.length() > 255) {
            extPosition = extPosition.substring(0, 255);
        }
        obj.setExtPosition(extPosition);
    }
    
    public void ResumeDataOnDemand.setHobby(Resume obj, int index) {
        String hobby = "hobby_" + index;
        if (hobby.length() > 2048) {
            hobby = hobby.substring(0, 2048);
        }
        obj.setHobby(hobby);
    }
    
    public void ResumeDataOnDemand.setLanguage(Resume obj, int index) {
        String language = "language_" + index;
        if (language.length() > 255) {
            language = language.substring(0, 255);
        }
        obj.setLanguage(language);
    }
    
    public void ResumeDataOnDemand.setPassportDate(Resume obj, int index) {
        Calendar passportDate = Calendar.getInstance();
        obj.setPassportDate(passportDate);
    }
    
    public void ResumeDataOnDemand.setPassportNum(Resume obj, int index) {
        String passportNum = "passportNum_" + index;
        if (passportNum.length() > 50) {
            passportNum = passportNum.substring(0, 50);
        }
        obj.setPassportNum(passportNum);
    }
    
    public void ResumeDataOnDemand.setPassportWhere(Resume obj, int index) {
        String passportWhere = "passportWhere_" + index;
        if (passportWhere.length() > 50) {
            passportWhere = passportWhere.substring(0, 50);
        }
        obj.setPassportWhere(passportWhere);
    }
    
    public void ResumeDataOnDemand.setPersonality(Resume obj, int index) {
        String personality = "personality_" + index;
        if (personality.length() > 255) {
            personality = personality.substring(0, 255);
        }
        obj.setPersonality(personality);
    }
    
    public void ResumeDataOnDemand.setSchool(Resume obj, int index) {
        String school = "school_" + index;
        if (school.length() > 255) {
            school = school.substring(0, 255);
        }
        obj.setSchool(school);
    }
    
    public void ResumeDataOnDemand.setSkills(Resume obj, int index) {
        String skills = "skills_" + index;
        if (skills.length() > 255) {
            skills = skills.substring(0, 255);
        }
        obj.setSkills(skills);
    }
    
    public void ResumeDataOnDemand.setTaxNumber(Resume obj, int index) {
        String taxNumber = "taxNumber_" + index;
        if (taxNumber.length() > 50) {
            taxNumber = taxNumber.substring(0, 50);
        }
        obj.setTaxNumber(taxNumber);
    }
    
    public void ResumeDataOnDemand.setUniversity(Resume obj, int index) {
        String university = "university_" + index;
        if (university.length() > 255) {
            university = university.substring(0, 255);
        }
        obj.setUniversity(university);
    }
    
    public void ResumeDataOnDemand.setWorkspaceId(Resume obj, int index) {
        Workspace workspaceId = workspaceDataOnDemand.getRandomWorkspace();
        obj.setWorkspaceId(workspaceId);
    }
    
    public Resume ResumeDataOnDemand.getSpecificResume(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Resume obj = data.get(index);
        Long id = obj.getId();
        return resumeService.findResume(id);
    }
    
    public Resume ResumeDataOnDemand.getRandomResume() {
        init();
        Resume obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return resumeService.findResume(id);
    }
    
    public boolean ResumeDataOnDemand.modifyResume(Resume obj) {
        return false;
    }
    
    public void ResumeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = resumeService.findResumeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Resume' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Resume>();
        for (int i = 0; i < 10; i++) {
            Resume obj = getNewTransientResume(i);
            try {
                resumeService.saveResume(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            resumeRepository.flush();
            data.add(obj);
        }
    }
    
}
