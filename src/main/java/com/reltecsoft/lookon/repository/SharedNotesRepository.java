package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.SharedNotes;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = SharedNotes.class)
public interface SharedNotesRepository {
}
