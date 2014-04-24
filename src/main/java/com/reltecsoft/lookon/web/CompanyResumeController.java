package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.CompanyResume;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/companyresumes")
@Controller
@RooWebScaffold(path = "companyresumes", formBackingObject = CompanyResume.class)
public class CompanyResumeController {
}
