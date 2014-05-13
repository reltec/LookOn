package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Email;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Email.class)
public interface EmailRepository {
}
