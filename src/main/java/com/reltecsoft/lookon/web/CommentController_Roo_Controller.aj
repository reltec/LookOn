// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.web;

import com.reltecsoft.lookon.domain.Comment;
import com.reltecsoft.lookon.service.CommentStatusService;
import com.reltecsoft.lookon.web.CommentController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.ConversionService;
import org.springframework.ui.Model;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect CommentController_Roo_Controller {
    
    private ConversionService CommentController.conversionService;
    
    @Autowired
    CommentStatusService CommentController.commentStatusService;
    
    @Autowired
    public CommentController.new(ConversionService conversionService) {
        super();
        this.conversionService = conversionService;
    }

    void CommentController.populateEditForm(Model uiModel, Comment comment) {
        uiModel.addAttribute("comment", comment);
        uiModel.addAttribute("dtcommentstatuses", commentStatusService.findAllDtCommentStatuses());
    }
    
    String CommentController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
