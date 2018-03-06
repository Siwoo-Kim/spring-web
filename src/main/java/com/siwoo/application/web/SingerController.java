package com.siwoo.application.web;

import com.siwoo.application.domain.Singer;
import com.siwoo.application.service.SingerService;
import com.siwoo.application.web.util.Message;
import com.siwoo.application.web.util.UrlUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.Locale;


@Slf4j
@Controller
@RequestMapping("/singers")
public class SingerController {

    @Autowired SingerService singerService;
    @Autowired MessageSource messageSource;


    @GetMapping("/{id}")
    public String show(@PathVariable Long id, Model model){
        log.info("Get request : /singers/:id");
        model.addAttribute(singerService.findById(id));
        return "singers/show";
    }

    @PostMapping(value="/{id}",params="form")
    public String update(
            @Valid Singer singer,
            BindingResult bindingResult,
            HttpServletRequest request,
            RedirectAttributes rattr,
            Model model,
            Locale locale){
        log.info("Post request : /singers/:id?form");
        if(bindingResult.hasErrors()){
            Message message = new Message("error", messageSource.getMessage("singer_save_fail",new Object[]{},locale));
            model.addAttribute("message",message);
            return "singers/edit";
        }
        model.asMap().clear();
        Message message = new Message("success", messageSource.getMessage("singer_save_success",new Object[]{},locale));
        rattr.addFlashAttribute("message",message);
        singerService.save(singer);
        return "redirect:/singers/" + UrlUtil.encodeUrlPathSegment(singer.getId().toString(),request);
    }

    @GetMapping(value="/{id}",params="form")
    public String updateForm(@PathVariable Long id,Model model){
        log.info("Get request : /singers/:id?form");
        model.addAttribute(singerService.findById(id));
        return "singers/edit";
    }

    @PostMapping
    public String create(
            @Valid Singer singer,
            BindingResult bindingResult,
            Model model,
            RedirectAttributes rattr,
            Locale locale){
        log.info("Post request : /singers");
        if(bindingResult.hasErrors()){
            Message messsage = new Message("error", messageSource.getMessage("singer_save_fail",new Object[]{},locale));
            model.addAttribute("message",messsage);
            return "singers/edit";
        }

        model.asMap().clear();
        Message messsage = new Message("success", messageSource.getMessage("singer_save_success",new Object[]{},locale));
        rattr.addFlashAttribute("message",messsage);
        singerService.save(singer);
        return "redirect:/singers";
    }

    public String createForm(Model model){
        model.addAttribute(new Singer());
        return "singers/create";
    }
}
