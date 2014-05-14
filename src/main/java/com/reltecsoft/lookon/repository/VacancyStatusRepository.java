package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.DtVacancyStatus;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DtVacancyStatus.class)
public interface VacancyStatusRepository {
}
