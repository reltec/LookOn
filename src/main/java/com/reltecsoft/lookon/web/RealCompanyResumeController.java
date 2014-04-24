package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.RealCompanyResume;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/realcompanyresumes")
@Controller
@RooWebScaffold(path = "realcompanyresumes", formBackingObject = RealCompanyResume.class)
public class RealCompanyResumeController {
}
