package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.CompanyStatus;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = CompanyStatus.class)
public interface CompanyStatusRepository {
}
