package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.DtWorkStatus;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dtworkstatuses")
@Controller
@RooWebScaffold(path = "dtworkstatuses", formBackingObject = DtWorkStatus.class)
public class DtWorkStatusController {
}
