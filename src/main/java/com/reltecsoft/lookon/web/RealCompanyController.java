package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.RealCompany;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/realcompanys")
@Controller
@RooWebScaffold(path = "realcompanys", formBackingObject = RealCompany.class)
public class RealCompanyController {
}
