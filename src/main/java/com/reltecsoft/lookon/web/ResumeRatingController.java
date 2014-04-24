package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.ResumeRating;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/resumeratings")
@Controller
@RooWebScaffold(path = "resumeratings", formBackingObject = ResumeRating.class)
public class ResumeRatingController {
}
