package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.DtCommentStatus;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DtCommentStatus.class)
public interface CommentStatusRepository {
}
