package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.DtChatStatus;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DtChatStatus.class)
public interface ChatStatusRepository {
}
