package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.DtChatRole;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dtchatroles")
@Controller
@RooWebScaffold(path = "dtchatroles", formBackingObject = DtChatRole.class)
public class DtChatRoleController {
}
