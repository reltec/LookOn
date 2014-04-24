package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.DtCommunityRole;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dtcommunityroles")
@Controller
@RooWebScaffold(path = "dtcommunityroles", formBackingObject = DtCommunityRole.class)
public class DtCommunityRoleController {
}
