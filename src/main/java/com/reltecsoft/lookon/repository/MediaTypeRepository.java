package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.MediaType;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = MediaType.class)
public interface MediaTypeRepository {
}
