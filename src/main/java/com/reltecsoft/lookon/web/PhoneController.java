package com.reltecsoft.lookon.web;
import com.reltecsoft.lookon.domain.Phone;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/phones")
@Controller
@RooWebScaffold(path = "phones", formBackingObject = Phone.class)
public class PhoneController {
}
