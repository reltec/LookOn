package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.DtPersonActivityStatus;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dtpersonactivitystatuses")
@Controller
@RooWebScaffold(path = "dtpersonactivitystatuses", formBackingObject = DtPersonActivityStatus.class)
public class DtPersonActivityStatusController {
}
