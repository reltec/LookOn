package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.PersonFriend;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = PersonFriend.class)
public interface PersonFriendRepository {
}
