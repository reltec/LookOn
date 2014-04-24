package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.DtCommunityRole;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DtCommunityRole.class)
public interface CommunityRoleRepository {
}
