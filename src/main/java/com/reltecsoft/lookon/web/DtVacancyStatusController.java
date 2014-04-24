package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.DtVacancyStatus;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dtvacancystatuses")
@Controller
@RooWebScaffold(path = "dtvacancystatuses", formBackingObject = DtVacancyStatus.class)
public class DtVacancyStatusController {
}
