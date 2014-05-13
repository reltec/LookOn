// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.Person;
import com.reltecsoft.lookon.service.PersonService;
import java.util.List;

privileged aspect PersonService_Roo_Service {
    
    public abstract long PersonService.countAllPeople();    
    public abstract void PersonService.deletePerson(Person person);    
    public abstract Person PersonService.findPerson(Long id);    
    public abstract List<Person> PersonService.findAllPeople();    
    public abstract List<Person> PersonService.findPersonEntries(int firstResult, int maxResults);    
    public abstract void PersonService.savePerson(Person person);    
    public abstract Person PersonService.updatePerson(Person person);    
}
