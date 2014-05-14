package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.DtPersonType;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DtPersonType.class)
public interface PersonTypeRepository {
}
