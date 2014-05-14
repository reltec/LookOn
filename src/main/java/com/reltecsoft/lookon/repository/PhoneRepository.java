package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Phone;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Phone.class)
public interface PhoneRepository {
}
