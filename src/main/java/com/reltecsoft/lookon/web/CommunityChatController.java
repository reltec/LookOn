package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.CommunityChat;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/communitychats")
@Controller
@RooWebScaffold(path = "communitychats", formBackingObject = CommunityChat.class)
public class CommunityChatController {
}
