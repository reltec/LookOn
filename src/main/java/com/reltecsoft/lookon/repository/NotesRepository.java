package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Notes;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Notes.class)
public interface NotesRepository {
}
