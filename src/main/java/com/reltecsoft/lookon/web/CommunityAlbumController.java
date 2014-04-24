package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.CommunityAlbum;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/communityalbums")
@Controller
@RooWebScaffold(path = "communityalbums", formBackingObject = CommunityAlbum.class)
public class CommunityAlbumController {
}
