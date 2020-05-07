package srzx.dao;

import srzx.engine.Order;
import srzx.engine.Orderitem;

import java.util.List;

public interface OrderDao {
    List<Order> findAll ();
//    List<Orderitem> findAll2();
    boolean delete1(int o_id);
    boolean delete2(int oi_id);
}
