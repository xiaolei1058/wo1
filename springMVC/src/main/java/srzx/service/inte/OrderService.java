package srzx.service.inte;

import srzx.engine.Order;
import srzx.engine.Orderitem;

import java.util.List;

public interface OrderService {
    List<Order> findall();
//    List<Orderitem> findall2();
    boolean delete(int o_id,int oi_id);
}
