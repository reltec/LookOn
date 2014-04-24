package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.PrivateMessage;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/privatemessages")
@Controller
@RooWebScaffold(path = "privatemessages", formBackingObject = PrivateMessage.class)
public class PrivateMessageController {
}
