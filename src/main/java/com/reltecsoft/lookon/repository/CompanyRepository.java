package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Company;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Company.class)
public interface CompanyRepository {
}
