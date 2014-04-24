package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.Comment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/comments")
@Controller
@RooWebScaffold(path = "comments", formBackingObject = Comment.class)
public class CommentController {
}
