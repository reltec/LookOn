// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.Chat;
import com.reltecsoft.lookon.domain.ChatMember;
import com.reltecsoft.lookon.domain.DtChatRole;
import com.reltecsoft.lookon.domain.Person;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect ChatMember_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "chat_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Chat ChatMember.chatId;
    
    @ManyToOne
    @JoinColumn(name = "role_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private DtChatRole ChatMember.roleId;
    
    @ManyToOne
    @JoinColumn(name = "inviter_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Person ChatMember.inviterId;
    
    @ManyToOne
    @JoinColumn(name = "person_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Person ChatMember.personId;
    
    public Chat ChatMember.getChatId() {
        return chatId;
    }
    
    public void ChatMember.setChatId(Chat chatId) {
        this.chatId = chatId;
    }
    
    public DtChatRole ChatMember.getRoleId() {
        return roleId;
    }
    
    public void ChatMember.setRoleId(DtChatRole roleId) {
        this.roleId = roleId;
    }
    
    public Person ChatMember.getInviterId() {
        return inviterId;
    }
    
    public void ChatMember.setInviterId(Person inviterId) {
        this.inviterId = inviterId;
    }
    
    public Person ChatMember.getPersonId() {
        return personId;
    }
    
    public void ChatMember.setPersonId(Person personId) {
        this.personId = personId;
    }
    
}
