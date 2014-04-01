package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Message;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Message.class)
public interface MessageRepository {
}
