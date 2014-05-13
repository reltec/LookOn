// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtCompanyStatusDataOnDemand;
import com.reltecsoft.lookon.domain.EmailDataOnDemand;
import com.reltecsoft.lookon.domain.MediaDataOnDemand;
import com.reltecsoft.lookon.domain.Phone;
import com.reltecsoft.lookon.domain.PhoneDataOnDemand;
import com.reltecsoft.lookon.domain.RealCompany;
import com.reltecsoft.lookon.domain.RealCompanyDataOnDemand;
import com.reltecsoft.lookon.domain.Workspace;
import com.reltecsoft.lookon.domain.WorkspaceDataOnDemand;
import com.reltecsoft.lookon.repository.RealCompanyRepository;
import com.reltecsoft.lookon.service.RealCompanyService;
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

privileged aspect RealCompanyDataOnDemand_Roo_DataOnDemand {
    
    declare @type: RealCompanyDataOnDemand: @Component;
    
    private Random RealCompanyDataOnDemand.rnd = new SecureRandom();
    
    private List<RealCompany> RealCompanyDataOnDemand.data;
    
    @Autowired
    EmailDataOnDemand RealCompanyDataOnDemand.emailDataOnDemand;
    
    @Autowired
    MediaDataOnDemand RealCompanyDataOnDemand.mediaDataOnDemand;
    
    @Autowired
    PhoneDataOnDemand RealCompanyDataOnDemand.phoneDataOnDemand;
    
    @Autowired
    DtCompanyStatusDataOnDemand RealCompanyDataOnDemand.dtCompanyStatusDataOnDemand;
    
    @Autowired
    WorkspaceDataOnDemand RealCompanyDataOnDemand.workspaceDataOnDemand;
    
    @Autowired
    RealCompanyService RealCompanyDataOnDemand.realCompanyService;
    
    @Autowired
    RealCompanyRepository RealCompanyDataOnDemand.realCompanyRepository;
    
    public RealCompany RealCompanyDataOnDemand.getNewTransientRealCompany(int index) {
        RealCompany obj = new RealCompany();
        setAdress(obj, index);
        setCity(obj, index);
        setCompanyCode(obj, index);
        setCountry(obj, index);
        setCreateDate(obj, index);
        setIndustry(obj, index);
        setName(obj, index);
        setPhoneId(obj, index);
        setWorkspaceId(obj, index);
        return obj;
    }
    
    public void RealCompanyDataOnDemand.setAdress(RealCompany obj, int index) {
        String adress = "adress_" + index;
        if (adress.length() > 255) {
            adress = adress.substring(0, 255);
        }
        obj.setAdress(adress);
    }
    
    public void RealCompanyDataOnDemand.setCity(RealCompany obj, int index) {
        String city = "city_" + index;
        if (city.length() > 255) {
            city = city.substring(0, 255);
        }
        obj.setCity(city);
    }
    
    public void RealCompanyDataOnDemand.setCompanyCode(RealCompany obj, int index) {
        String companyCode = "companyCode_" + index;
        if (companyCode.length() > 50) {
            companyCode = companyCode.substring(0, 50);
        }
        obj.setCompanyCode(companyCode);
    }
    
    public void RealCompanyDataOnDemand.setCountry(RealCompany obj, int index) {
        String country = "country_" + index;
        if (country.length() > 50) {
            country = country.substring(0, 50);
        }
        obj.setCountry(country);
    }
    
    public void RealCompanyDataOnDemand.setCreateDate(RealCompany obj, int index) {
        Calendar createDate = Calendar.getInstance();
        obj.setCreateDate(createDate);
    }
    
    public void RealCompanyDataOnDemand.setIndustry(RealCompany obj, int index) {
        String industry = "industry_" + index;
        if (industry.length() > 255) {
            industry = industry.substring(0, 255);
        }
        obj.setIndustry(industry);
    }
    
    public void RealCompanyDataOnDemand.setName(RealCompany obj, int index) {
        String name = "name_" + index;
        if (name.length() > 50) {
            name = name.substring(0, 50);
        }
        obj.setName(name);
    }
    
    public void RealCompanyDataOnDemand.setPhoneId(RealCompany obj, int index) {
        Phone phoneId = phoneDataOnDemand.getRandomPhone();
        obj.setPhoneId(phoneId);
    }
    
    public void RealCompanyDataOnDemand.setWorkspaceId(RealCompany obj, int index) {
        Workspace workspaceId = workspaceDataOnDemand.getRandomWorkspace();
        obj.setWorkspaceId(workspaceId);
    }
    
    public RealCompany RealCompanyDataOnDemand.getSpecificRealCompany(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        RealCompany obj = data.get(index);
        Long id = obj.getId();
        return realCompanyService.findRealCompany(id);
    }
    
    public RealCompany RealCompanyDataOnDemand.getRandomRealCompany() {
        init();
        RealCompany obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return realCompanyService.findRealCompany(id);
    }
    
    public boolean RealCompanyDataOnDemand.modifyRealCompany(RealCompany obj) {
        return false;
    }
    
    public void RealCompanyDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = realCompanyService.findRealCompanyEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'RealCompany' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<RealCompany>();
        for (int i = 0; i < 10; i++) {
            RealCompany obj = getNewTransientRealCompany(i);
            try {
                realCompanyService.saveRealCompany(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            realCompanyRepository.flush();
            data.add(obj);
        }
    }
    
}