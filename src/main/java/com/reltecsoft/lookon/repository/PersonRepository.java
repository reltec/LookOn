package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Person;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Person.class)
public interface PersonRepository {
}
