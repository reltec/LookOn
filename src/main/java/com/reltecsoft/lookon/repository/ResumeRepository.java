package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Resume;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Resume.class)
public interface ResumeRepository {
}
