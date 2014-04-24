package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.Media;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/medias")
@Controller
@RooWebScaffold(path = "medias", formBackingObject = Media.class)
public class MediaController {
}
