package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.SharedNotes;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/sharednoteses")
@Controller
@RooWebScaffold(path = "sharednoteses", formBackingObject = SharedNotes.class)
public class SharedNotesController {
}
