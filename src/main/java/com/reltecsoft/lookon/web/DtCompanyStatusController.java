package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.DtCompanyStatus;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dtcompanystatuses")
@Controller
@RooWebScaffold(path = "dtcompanystatuses", formBackingObject = DtCompanyStatus.class)
public class DtCompanyStatusController {
}
