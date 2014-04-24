package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.Album;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/albums")
@Controller
@RooWebScaffold(path = "albums", formBackingObject = Album.class)
public class AlbumController {
}
