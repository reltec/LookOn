package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.PersonBlacklist;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = PersonBlacklist.class)
public interface PersonBlacklistRepository {
}
