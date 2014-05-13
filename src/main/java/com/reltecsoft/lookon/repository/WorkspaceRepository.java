package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Workspace;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Workspace.class)
public interface WorkspaceRepository {
}
