package srzx.dao;


import srzx.engine.Manage;
import srzx.engine.Pager;
import srzx.engine.Product;

import java.util.List;

public interface ProductDao {
    public boolean add(Product product);

    public boolean delete(int id);
    public boolean huifu(int id);
    public boolean update(Product product);

    public Product findBySno(int id);

    //    public List<Student> findAll(Connection connection);

//    public plogin(String name,String password);
    public Pager<Product> pageList(int pageIndex, int pageSize, String keyword);
    public long getTotalCount(String keyword);
    public boolean deleteall(String[] ids);
    public boolean batchDel(String[] ids, int del);
    public List<Product> findAll();
}
