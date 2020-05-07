package srzx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import srzx.engine.Manage;
import srzx.engine.Menu;
import srzx.engine.Product;
import srzx.service.ProductServiceimpl;
import srzx.service.inte.ManageService;
import srzx.service.inte.ProductService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/oo")
@SessionAttributes({"list","manage","menu","manage1"})
public class ManagerController {
    @Autowired
    private ManageService manageService;
    @RequestMapping("/index")
    public String index(ModelMap modelMap){
//        List<Manage> all = manageService.findAll();
//        modelMap.addAttribute("list",all);
//        System.out.println("ManagerList"+all);
//        return "ManagerList";\
        return "index";}
    @RequestMapping("/list")
    public String findAll1(ModelMap modelMap){
        List<Manage> all = manageService.findAll();
        System.out.println(all);
        modelMap.addAttribute("list",all);
//        modelMap.addAttribute("name","kkk");
//        System.out.println("ManagerList"+all);
//        return "ManagerList";\
        return "list";}
        @RequestMapping("/add")
    public String add(String name,String password,int role){
        Manage manage=new Manage();
        manage.setName(name);
        manage.setPassword(password);
        manage.setRole(role);
        manageService.add(manage);
            System.out.println(manage);

        return "admin_add";
        }
    @RequestMapping("/join1/{num}/{name}")
    public String find1(@PathVariable("num") int id, @PathVariable String name){
        System.out.println(id+"=="+name);
        return "login";
    }
    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable int id){
        boolean delete = manageService.delete(id);

        return "redirect:/oo/list";

    }
    @RequestMapping("/login")
    public String login(String username,String password,ModelMap modelMap){
        System.out.println(username+"+"+password);
        Manage manage=new Manage();
        manage.setName(username);
        manage.setPassword(password);
        Manage login = manageService.login(manage);
        System.out.println(login);

        if("".equals(login)||null==login){

            return "login";
        }
        int role = login.getRole();
       List<Menu> findmenu = manageService.findmenu(role);
        System.out.println(findmenu);
        modelMap.addAttribute("menu",findmenu);
modelMap.addAttribute("manage1" ,login);

        return "index";
    }
    @RequestMapping("/update1")
    @ResponseBody
    public String update(int id,String name,int role){
        Manage manage=new Manage();
        manage.setId(id);
        manage.setName(name);
//        manage.setPassword(password);
        System.out.println(role);
        manage.setRole(role);
        System.out.println(role);
//        manage.setStatus(status);
        boolean update = manageService.update(manage);
        if (update){
        return "true";
    }
return "false";
    }
    @RequestMapping("/update/{id}")
//    @ResponseBody
    public String update1(@PathVariable int id, ModelMap modelMap){

        System.out.println(id);
//        Manage login =(Manage) session.getAttribute("login");
//        Manage findone = manageService.findByid(login.getId());
        Manage byid = manageService.findByid(id);
        modelMap.addAttribute("manage",byid);
//        modelMap.addAttribute("manage",findone);
//        if("".equals(findone)||null==findone){
//            if (findone.getRole()==2){
//
//                modelMap.addAttribute("manage",byid);
//
//
//
//                return "2";
//            }



//        }
        return "admin_edit";

    }
    @RequestMapping("/findone/{id}")
    public String findone(@PathVariable int id){
//        System.out.println(username+"+"+password);
        Manage manage=new Manage();

        Manage login = manageService.findByid(id);
        System.out.println(login);
        if("".equals(login)||null==login){
            if (login.getRole()==2){
                return "login";
            }

        }

        return "index";
    }
    @RequestMapping("out")
    public String out(){
        return "login";
    }
}
