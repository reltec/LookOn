// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.service;

import com.reltecsoft.lookon.domain.DtCommunityRole;
import com.reltecsoft.lookon.service.CommunityRoleService;
import java.util.List;

privileged aspect CommunityRoleService_Roo_Service {
    
    public abstract long CommunityRoleService.countAllDtCommunityRoles();    
    public abstract void CommunityRoleService.deleteDtCommunityRole(DtCommunityRole dtCommunityRole);    
    public abstract DtCommunityRole CommunityRoleService.findDtCommunityRole(Integer id);    
    public abstract List<DtCommunityRole> CommunityRoleService.findAllDtCommunityRoles();    
    public abstract List<DtCommunityRole> CommunityRoleService.findDtCommunityRoleEntries(int firstResult, int maxResults);    
    public abstract void CommunityRoleService.saveDtCommunityRole(DtCommunityRole dtCommunityRole);    
    public abstract DtCommunityRole CommunityRoleService.updateDtCommunityRole(DtCommunityRole dtCommunityRole);    
}