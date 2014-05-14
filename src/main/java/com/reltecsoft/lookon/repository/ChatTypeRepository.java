package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.DtChatType;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DtChatType.class)
public interface ChatTypeRepository {
}
