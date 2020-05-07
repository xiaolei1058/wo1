package srzx.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import srzx.dao.OrderDao;
import srzx.engine.Order;
import srzx.engine.Orderitem;
import srzx.service.inte.OrderService;

import java.util.List;
@Service("orderService")
public class OrderServiceimpl implements OrderService {
    @Autowired
private SqlSessionTemplate sql;
    @Override
    public List<Order> findall() {
        OrderDao mapper = sql.getMapper(OrderDao.class);
        List<Order> all = mapper.findAll();
        return all;
    }

//    @Override
//    public List<Orderitem> findall2() {
//        OrderDao mapper = sql.getMapper(OrderDao.class);
////        List<Orderitem> all2 = mapper.findAll2();
////        return all2;
//    }

    @Override
    public boolean delete(int o_id, int oi_id) {
        OrderDao mapper = sql.getMapper(OrderDao.class);
        boolean b1 = mapper.delete1(o_id);

        boolean b = mapper.delete2(oi_id);
        if (b1||b){
            return true;
        }
        return false;
    }
}
