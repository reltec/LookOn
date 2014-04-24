package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.NotesRole;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/notesroles")
@Controller
@RooWebScaffold(path = "notesroles", formBackingObject = NotesRole.class)
public class NotesRoleController {
}
