package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.CommunityPerson;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = CommunityPerson.class)
public interface CommunityPersonRepository {
}
