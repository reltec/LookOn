// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.DtChatRole;
import com.reltecsoft.lookon.service.ChatRole;
import java.util.List;

privileged aspect ChatRole_Roo_Service {
    
    public abstract long ChatRole.countAllDtChatRoles();    
    public abstract void ChatRole.deleteDtChatRole(DtChatRole dtChatRole);    
    public abstract DtChatRole ChatRole.findDtChatRole(Integer id);    
    public abstract List<DtChatRole> ChatRole.findAllDtChatRoles();    
    public abstract List<DtChatRole> ChatRole.findDtChatRoleEntries(int firstResult, int maxResults);    
    public abstract void ChatRole.saveDtChatRole(DtChatRole dtChatRole);    
    public abstract DtChatRole ChatRole.updateDtChatRole(DtChatRole dtChatRole);    
}
