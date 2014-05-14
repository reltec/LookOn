package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.DtCompanyStatus;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DtCompanyStatus.class)
public interface CompanyStatusRepository {
}
