package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.PersonAlbum;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/personalbums")
@Controller
@RooWebScaffold(path = "personalbums", formBackingObject = PersonAlbum.class)
public class PersonAlbumController {
}
