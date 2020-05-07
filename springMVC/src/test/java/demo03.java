import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import srzx.engine.Manage;
import srzx.service.inte.ManageService;

import java.util.List;


public class demo03 {
@Test
    public void de(){
    ApplicationContext applicationContext=new ClassPathXmlApplicationContext("beans.xml");
    ManageService manageService = (ManageService)applicationContext.getBean("manageService");
    manageService.delete(29);
}
@Test
    public void add(){
    ApplicationContext applicationContext=new ClassPathXmlApplicationContext("beans.xml");
    ManageService manageService = (ManageService)applicationContext.getBean("manageService");
//    Manage manage=new Manage();
//    manage.setName("23132123");
//    manage.setPassword("jianglei");
//    boolean add = manageService.add(manage);
//    System.out.println(add);
    Manage manage= manageService.findByid(1);
    System.out.println(manage);

}

@Test
    public void update(){

}
}