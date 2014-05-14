package com.reltecsoft.lookon.repository;
import com.reltecsoft.lookon.domain.Comment;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Comment.class)
public interface CommentRepository {
}
