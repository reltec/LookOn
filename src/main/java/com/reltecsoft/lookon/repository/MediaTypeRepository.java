package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.DtMediaType;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DtMediaType.class)
public interface MediaTypeRepository {
}
