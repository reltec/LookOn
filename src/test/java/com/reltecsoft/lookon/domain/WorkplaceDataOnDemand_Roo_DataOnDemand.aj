// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.DtWorkStatusDataOnDemand;
import com.reltecsoft.lookon.domain.RealCompany;
import com.reltecsoft.lookon.domain.RealCompanyDataOnDemand;
import com.reltecsoft.lookon.domain.Workplace;
import com.reltecsoft.lookon.domain.WorkplaceDataOnDemand;
import com.reltecsoft.lookon.domain.Workspace;
import com.reltecsoft.lookon.domain.WorkspaceDataOnDemand;
import com.reltecsoft.lookon.repository.WorkplaceRepository;
import com.reltecsoft.lookon.service.WorkplaceService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect WorkplaceDataOnDemand_Roo_DataOnDemand {
    
    declare @type: WorkplaceDataOnDemand: @Component;
    
    private Random WorkplaceDataOnDemand.rnd = new SecureRandom();
    
    private List<Workplace> WorkplaceDataOnDemand.data;
    
    @Autowired
    RealCompanyDataOnDemand WorkplaceDataOnDemand.realCompanyDataOnDemand;
    
    @Autowired
    DtWorkStatusDataOnDemand WorkplaceDataOnDemand.dtWorkStatusDataOnDemand;
    
    @Autowired
    WorkspaceDataOnDemand WorkplaceDataOnDemand.workspaceDataOnDemand;
    
    @Autowired
    WorkplaceService WorkplaceDataOnDemand.workplaceService;
    
    @Autowired
    WorkplaceRepository WorkplaceDataOnDemand.workplaceRepository;
    
    public Workplace WorkplaceDataOnDemand.getNewTransientWorkplace(int index) {
        Workplace obj = new Workplace();
        setCompanyId(obj, index);
        setWorkspaceId(obj, index);
        return obj;
    }
    
    public void WorkplaceDataOnDemand.setCompanyId(Workplace obj, int index) {
        RealCompany companyId = realCompanyDataOnDemand.getRandomRealCompany();
        obj.setCompanyId(companyId);
    }
    
    public void WorkplaceDataOnDemand.setWorkspaceId(Workplace obj, int index) {
        Workspace workspaceId = workspaceDataOnDemand.getRandomWorkspace();
        obj.setWorkspaceId(workspaceId);
    }
    
    public Workplace WorkplaceDataOnDemand.getSpecificWorkplace(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Workplace obj = data.get(index);
        Integer id = obj.getId();
        return workplaceService.findWorkplace(id);
    }
    
    public Workplace WorkplaceDataOnDemand.getRandomWorkplace() {
        init();
        Workplace obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getId();
        return workplaceService.findWorkplace(id);
    }
    
    public boolean WorkplaceDataOnDemand.modifyWorkplace(Workplace obj) {
        return false;
    }
    
    public void WorkplaceDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = workplaceService.findWorkplaceEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Workplace' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Workplace>();
        for (int i = 0; i < 10; i++) {
            Workplace obj = getNewTransientWorkplace(i);
            try {
                workplaceService.saveWorkplace(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            workplaceRepository.flush();
            data.add(obj);
        }
    }
    
}
