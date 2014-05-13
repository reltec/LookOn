// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.Vacancy;
import com.reltecsoft.lookon.repository.VacancyRepository;
import com.reltecsoft.lookon.service.VacancyServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VacancyServiceImpl_Roo_Service {
    
    declare @type: VacancyServiceImpl: @Service;
    
    declare @type: VacancyServiceImpl: @Transactional;
    
    @Autowired
    VacancyRepository VacancyServiceImpl.vacancyRepository;
    
    public long VacancyServiceImpl.countAllVacancys() {
        return vacancyRepository.count();
    }
    
    public void VacancyServiceImpl.deleteVacancy(Vacancy vacancy) {
        vacancyRepository.delete(vacancy);
    }
    
    public Vacancy VacancyServiceImpl.findVacancy(Long id) {
        return vacancyRepository.findOne(id);
    }
    
    public List<Vacancy> VacancyServiceImpl.findAllVacancys() {
        return vacancyRepository.findAll();
    }
    
    public List<Vacancy> VacancyServiceImpl.findVacancyEntries(int firstResult, int maxResults) {
        return vacancyRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void VacancyServiceImpl.saveVacancy(Vacancy vacancy) {
        vacancyRepository.save(vacancy);
    }
    
    public Vacancy VacancyServiceImpl.updateVacancy(Vacancy vacancy) {
        return vacancyRepository.save(vacancy);
    }
    
}
