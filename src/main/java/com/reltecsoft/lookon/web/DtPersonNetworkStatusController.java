package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.DtPersonNetworkStatus;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dtpersonnetworkstatuses")
@Controller
@RooWebScaffold(path = "dtpersonnetworkstatuses", formBackingObject = DtPersonNetworkStatus.class)
public class DtPersonNetworkStatusController {
}
