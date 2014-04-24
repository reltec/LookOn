package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.DtNotesType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dtnotestypes")
@Controller
@RooWebScaffold(path = "dtnotestypes", formBackingObject = DtNotesType.class)
public class DtNotesTypeController {
}
