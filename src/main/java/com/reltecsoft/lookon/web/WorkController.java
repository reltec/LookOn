package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.Work;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/works")
@Controller
@RooWebScaffold(path = "works", formBackingObject = Work.class)
public class WorkController {
}
