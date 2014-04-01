package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.NotesType;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = NotesType.class)
public interface NotesTypeRepository {
}
