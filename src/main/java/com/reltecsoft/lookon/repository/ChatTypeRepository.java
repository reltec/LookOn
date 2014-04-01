package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.ChatType;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = ChatType.class)
public interface ChatTypeRepository {
}
