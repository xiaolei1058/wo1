package srzx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import srzx.engine.Order;
import srzx.engine.Orderitem;
import srzx.service.inte.OrderService;

import java.util.List;

@Controller
@RequestMapping("/dd")
@SessionAttributes({"order"})
public class OrderController {
    @Autowired
    private OrderService orderService;
    @RequestMapping("/findall")
    public String find(ModelMap modelMap){
        List<Order> findall = orderService.findall();
//        List<Orderitem> orderitems = orderService.findall2();
//        modelMap.addAttribute("orderim",orderitems);
        modelMap.addAttribute("order",findall);
        return "order";

    }



}
