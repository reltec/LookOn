package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.PersonBlacklist;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/personblacklists")
@Controller
@RooWebScaffold(path = "personblacklists", formBackingObject = PersonBlacklist.class)
public class PersonBlacklistController {
}
