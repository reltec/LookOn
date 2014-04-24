package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.DtCommentStatus;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dtcommentstatuses")
@Controller
@RooWebScaffold(path = "dtcommentstatuses", formBackingObject = DtCommentStatus.class)
public class DtCommentStatusController {
}
