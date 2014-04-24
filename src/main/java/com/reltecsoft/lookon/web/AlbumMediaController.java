package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.AlbumMedia;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/albummedias")
@Controller
@RooWebScaffold(path = "albummedias", formBackingObject = AlbumMedia.class)
public class AlbumMediaController {
}
