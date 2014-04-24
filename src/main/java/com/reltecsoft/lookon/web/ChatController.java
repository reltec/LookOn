package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.Chat;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/chats")
@Controller
@RooWebScaffold(path = "chats", formBackingObject = Chat.class)
public class ChatController {
}
