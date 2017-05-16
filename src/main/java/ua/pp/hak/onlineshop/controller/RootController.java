package ua.pp.hak.onlineshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import ua.pp.hak.onlineshop.model.CartInfo;
import ua.pp.hak.onlineshop.utils.Utils;

import javax.servlet.http.HttpServletRequest;

@Controller
public class RootController {

    @ModelAttribute("cartSize")
    public int getCartSize(HttpServletRequest request) {
        CartInfo cartInfo = Utils.getCartInSession(request);
        return cartInfo.getCartLines().size();
    }

}
