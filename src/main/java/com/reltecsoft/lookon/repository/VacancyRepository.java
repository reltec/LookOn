package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Vacancy;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Vacancy.class)
public interface VacancyRepository {
}
