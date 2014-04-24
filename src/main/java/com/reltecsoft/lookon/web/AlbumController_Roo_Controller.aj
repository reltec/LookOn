// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.web;

import com.reltecsoft.lookon.domain.Album;
import com.reltecsoft.lookon.service.MediaTypeService;
import com.reltecsoft.lookon.web.AlbumController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect AlbumController_Roo_Controller {
    
    @Autowired
    MediaTypeService AlbumController.mediaTypeService;
    
    void AlbumController.populateEditForm(Model uiModel, Album album) {
        uiModel.addAttribute("album", album);
        uiModel.addAttribute("dtmediatypes", mediaTypeService.findAllDtMediaTypes());
    }
    
    String AlbumController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
