package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.Vacancy;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/vacancys")
@Controller
@RooWebScaffold(path = "vacancys", formBackingObject = Vacancy.class)
public class VacancyController {
}
