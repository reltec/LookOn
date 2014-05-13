package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.RealCompany;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = RealCompany.class)
public interface RealCompanyRepository {
}
