package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.PersonFriend;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/personfriends")
@Controller
@RooWebScaffold(path = "personfriends", formBackingObject = PersonFriend.class)
public class PersonFriendController {
}
