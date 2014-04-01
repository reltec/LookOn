package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.UserWork;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = UserWork.class)
public interface UserWorkRepository {
}
