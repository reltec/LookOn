package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Chat;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Chat.class)
public interface ChatRepository {
}
