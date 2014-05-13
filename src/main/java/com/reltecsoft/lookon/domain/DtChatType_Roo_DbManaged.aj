// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Chat;
import com.reltecsoft.lookon.domain.DtChatType;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;

privileged aspect DtChatType_Roo_DbManaged {
    
    @OneToMany(mappedBy = "typeId")
    private Set<Chat> DtChatType.chats;
    
    @Column(name = "type_name", columnDefinition = "varchar", length = 50)
    private String DtChatType.typeName;
    
    public Set<Chat> DtChatType.getChats() {
        return chats;
    }
    
    public void DtChatType.setChats(Set<Chat> chats) {
        this.chats = chats;
    }
    
    public String DtChatType.getTypeName() {
        return typeName;
    }
    
    public void DtChatType.setTypeName(String typeName) {
        this.typeName = typeName;
    }
    
}
