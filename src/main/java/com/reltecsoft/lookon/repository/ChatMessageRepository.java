package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.ChatMessage;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = ChatMessage.class)
public interface ChatMessageRepository {
}
