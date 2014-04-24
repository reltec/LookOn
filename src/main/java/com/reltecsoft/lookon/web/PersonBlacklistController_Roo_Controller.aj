// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.web;

import com.reltecsoft.lookon.domain.PersonBlacklist;
import com.reltecsoft.lookon.service.PersonTypeService;
import com.reltecsoft.lookon.web.PersonBlacklistController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.ConversionService;
import org.springframework.ui.Model;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PersonBlacklistController_Roo_Controller {
    
    private ConversionService PersonBlacklistController.conversionService;
    
    @Autowired
    PersonTypeService PersonBlacklistController.personTypeService;
    
    @Autowired
    public PersonBlacklistController.new(ConversionService conversionService) {
        super();
        this.conversionService = conversionService;
    }

    void PersonBlacklistController.populateEditForm(Model uiModel, PersonBlacklist personBlacklist) {
        uiModel.addAttribute("personBlacklist", personBlacklist);
        uiModel.addAttribute("dtpersontypes", personTypeService.findAllDtPersonTypes());
    }
    
    String PersonBlacklistController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
