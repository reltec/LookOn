package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.Community;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/communitys")
@Controller
@RooWebScaffold(path = "communitys", formBackingObject = Community.class)
public class CommunityController {
}
