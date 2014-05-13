package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.PrivateMessage;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = PrivateMessage.class)
public interface PrivateMessageRepository {
}
