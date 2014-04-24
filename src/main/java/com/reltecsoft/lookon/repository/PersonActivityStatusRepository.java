package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.DtPersonActivityStatus;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DtPersonActivityStatus.class)
public interface PersonActivityStatusRepository {
}
