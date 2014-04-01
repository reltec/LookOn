package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.WorkHistory;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = WorkHistory.class)
public interface WorkHistoryRepository {
}
