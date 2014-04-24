package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.PersonChat;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/personchats")
@Controller
@RooWebScaffold(path = "personchats", formBackingObject = PersonChat.class)
public class PersonChatController {
}
