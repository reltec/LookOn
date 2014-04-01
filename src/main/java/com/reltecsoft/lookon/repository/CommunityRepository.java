package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Community;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Community.class)
public interface CommunityRepository {
}
