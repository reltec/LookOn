package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Note;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Note.class)
public interface NoteRepository {
}
