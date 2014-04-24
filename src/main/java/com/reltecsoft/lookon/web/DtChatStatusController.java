package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.DtChatStatus;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dtchatstatuses")
@Controller
@RooWebScaffold(path = "dtchatstatuses", formBackingObject = DtChatStatus.class)
public class DtChatStatusController {
}
