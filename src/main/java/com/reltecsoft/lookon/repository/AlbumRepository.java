package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Album;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Album.class)
public interface AlbumRepository {
}
