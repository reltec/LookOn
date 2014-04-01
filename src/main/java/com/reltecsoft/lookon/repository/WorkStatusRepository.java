package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.WorkStatus;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = WorkStatus.class)
public interface WorkStatusRepository {
}
