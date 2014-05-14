package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.DtWorkStatus;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DtWorkStatus.class)
public interface WorkStatusRepository {
}
