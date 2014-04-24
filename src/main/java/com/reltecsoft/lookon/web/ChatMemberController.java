package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.ChatMember;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/chatmembers")
@Controller
@RooWebScaffold(path = "chatmembers", formBackingObject = ChatMember.class)
public class ChatMemberController {
}
