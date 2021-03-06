// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Comment;
import com.reltecsoft.lookon.domain.DtCommentStatus;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect DtCommentStatus_Roo_DbManaged {
    
    @OneToMany(mappedBy = "statusId")
    private Set<Comment> DtCommentStatus.comments;
    
    @Column(name = "name", columnDefinition = "nvarchar", length = 50)
    @NotNull
    private String DtCommentStatus.name;
    
    public Set<Comment> DtCommentStatus.getComments() {
        return comments;
    }
    
    public void DtCommentStatus.setComments(Set<Comment> comments) {
        this.comments = comments;
    }
    
    public String DtCommentStatus.getName() {
        return name;
    }
    
    public void DtCommentStatus.setName(String name) {
        this.name = name;
    }
    
}
