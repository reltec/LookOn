package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.CompanyRating;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/companyratings")
@Controller
@RooWebScaffold(path = "companyratings", formBackingObject = CompanyRating.class)
public class CompanyRatingController {
}
