package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.DtPersonType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dtpersontypes")
@Controller
@RooWebScaffold(path = "dtpersontypes", formBackingObject = DtPersonType.class)
public class DtPersonTypeController {
}
