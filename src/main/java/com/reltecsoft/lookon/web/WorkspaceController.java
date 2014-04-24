package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.Workspace;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/workspaces")
@Controller
@RooWebScaffold(path = "workspaces", formBackingObject = Workspace.class)
public class WorkspaceController {
}
