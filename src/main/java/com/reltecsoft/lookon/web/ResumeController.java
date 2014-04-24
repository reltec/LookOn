package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.Resume;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/resumes")
@Controller
@RooWebScaffold(path = "resumes", formBackingObject = Resume.class)
public class ResumeController {
}
