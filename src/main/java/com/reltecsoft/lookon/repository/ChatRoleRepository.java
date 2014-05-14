package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.DtChatRole;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DtChatRole.class)
public interface ChatRoleRepository {
}
