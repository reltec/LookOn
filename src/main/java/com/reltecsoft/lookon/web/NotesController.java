package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.Notes;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/noteses")
@Controller
@RooWebScaffold(path = "noteses", formBackingObject = Notes.class)
public class NotesController {
}
