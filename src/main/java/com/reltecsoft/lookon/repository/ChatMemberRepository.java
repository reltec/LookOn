package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.ChatMember;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = ChatMember.class)
public interface ChatMemberRepository {
}
