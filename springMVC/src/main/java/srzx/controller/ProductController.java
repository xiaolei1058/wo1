package srzx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import srzx.engine.Product;
import srzx.service.inte.ProductService;

import java.util.List;

@Controller
@RequestMapping("/pp")
@SessionAttributes({"list"})
public class ProductController {
    @Autowired
private ProductService productService;
@RequestMapping("/findall")
public String findall(ModelMap modelMap){
    System.out.println("3333333");
    List<Product> all = productService.findAll();
    System.out.println("2121212");
    modelMap.addAttribute("list",all);
    return "product_list";

}
@RequestMapping("/add")
    public  String add(String name,String account,  Integer store,String pics,Integer sell,Integer watch,String addtime,Integer status,Integer is_top,Integer t_id){
    int s=sell;
    System.out.println(name+"qeqeqeqeqeqeqeqeqeqe");
    System.out.println(account);
    System.out.println(t_id);
    Product product = new Product();
    product.setName(name);
    product.setAccount(account);

   product.setStore(store);
   product.setPics(pics);
   product.setSell(sell);
   product.setStatus(status);
   product.setIs_top(is_top);
   product.setT_id(t_id);
   product.setWatch(watch);

    boolean add = productService.add(product);

   return "product_add";

}
@RequestMapping("/delete/{id}")
    public String delete(@PathVariable int id){
    boolean delete = productService.delete(id);
    System.out.println(delete);
    return "redirect:/pp/findall";

}
@RequestMapping("/update1/{id}")
public String update1(@PathVariable int id, ModelMap modelMap){
    Product byid = productService.findByid(id);
    modelMap.addAttribute("product",byid);
        return "product_edit";

}
@RequestMapping("/update2")
    public String delete(int id,String name,String account,Double j_price,double s_price,double y_price,int store,String pics,int sell,int watch,String addtime,int status,int is_top,int t_id){
    Product product = new Product();
    product.setName(name);
    product.setId(id);
    product.setAccount(account);
    product.setJ_price(j_price);
    product.setS_price(s_price);
    product.setY_price(y_price);
    product.setStore(store);
    product.setPics(pics);
    product.setSell(sell);
    product.setStatus(status);
    product.setIs_top(is_top);
    product.setT_id(t_id);
    product.setWatch(watch);
    boolean update = productService.update(product);
    return "product_edit";
}
@RequestMapping("/huifu/{id}")
    public String huifu(@PathVariable int id){
    System.out.println(id);
    productService.huifu(id);
    return "redirect:/pp/findall";
}
}
