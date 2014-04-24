// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.web;

import com.reltecsoft.lookon.domain.DtPersonActivityStatus;
import com.reltecsoft.lookon.service.PersonActivityStatusService;
import com.reltecsoft.lookon.web.DtPersonActivityStatusController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect DtPersonActivityStatusController_Roo_Controller {
    
    @Autowired
    PersonActivityStatusService DtPersonActivityStatusController.personActivityStatusService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String DtPersonActivityStatusController.create(@Valid DtPersonActivityStatus dtPersonActivityStatus, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, dtPersonActivityStatus);
            return "dtpersonactivitystatuses/create";
        }
        uiModel.asMap().clear();
        personActivityStatusService.saveDtPersonActivityStatus(dtPersonActivityStatus);
        return "redirect:/dtpersonactivitystatuses/" + encodeUrlPathSegment(dtPersonActivityStatus.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String DtPersonActivityStatusController.createForm(Model uiModel) {
        populateEditForm(uiModel, new DtPersonActivityStatus());
        return "dtpersonactivitystatuses/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String DtPersonActivityStatusController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("dtpersonactivitystatus", personActivityStatusService.findDtPersonActivityStatus(id));
        uiModel.addAttribute("itemId", id);
        return "dtpersonactivitystatuses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String DtPersonActivityStatusController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("dtpersonactivitystatuses", personActivityStatusService.findDtPersonActivityStatusEntries(firstResult, sizeNo));
            float nrOfPages = (float) personActivityStatusService.countAllDtPersonActivityStatuses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("dtpersonactivitystatuses", personActivityStatusService.findAllDtPersonActivityStatuses());
        }
        return "dtpersonactivitystatuses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String DtPersonActivityStatusController.update(@Valid DtPersonActivityStatus dtPersonActivityStatus, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, dtPersonActivityStatus);
            return "dtpersonactivitystatuses/update";
        }
        uiModel.asMap().clear();
        personActivityStatusService.updateDtPersonActivityStatus(dtPersonActivityStatus);
        return "redirect:/dtpersonactivitystatuses/" + encodeUrlPathSegment(dtPersonActivityStatus.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String DtPersonActivityStatusController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, personActivityStatusService.findDtPersonActivityStatus(id));
        return "dtpersonactivitystatuses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String DtPersonActivityStatusController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        DtPersonActivityStatus dtPersonActivityStatus = personActivityStatusService.findDtPersonActivityStatus(id);
        personActivityStatusService.deleteDtPersonActivityStatus(dtPersonActivityStatus);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/dtpersonactivitystatuses";
    }
    
    void DtPersonActivityStatusController.populateEditForm(Model uiModel, DtPersonActivityStatus dtPersonActivityStatus) {
        uiModel.addAttribute("dtPersonActivityStatus", dtPersonActivityStatus);
    }
    
    String DtPersonActivityStatusController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
