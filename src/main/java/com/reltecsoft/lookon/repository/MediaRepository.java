package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Media;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Media.class)
public interface MediaRepository {
}
