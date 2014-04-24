package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.PersonRating;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/personratings")
@Controller
@RooWebScaffold(path = "personratings", formBackingObject = PersonRating.class)
public class PersonRatingController {
}
