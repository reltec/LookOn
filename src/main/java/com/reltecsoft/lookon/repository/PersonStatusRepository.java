package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.PersonStatus;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = PersonStatus.class)
public interface PersonStatusRepository {
}
