package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Workplace;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Workplace.class)
public interface WorkplaceRepository {
}
