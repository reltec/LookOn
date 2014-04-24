package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.DtNotesType;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DtNotesType.class)
public interface NotesTypeRepository {
}
