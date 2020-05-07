package srzx.service.inte;

import srzx.engine.Product;

import java.util.List;

public interface ProductService {
    public boolean delete(int id);
    public boolean add(Product product);
    public List<Product> findAll();
    public Product login(Product product);
    public boolean update(Product product);
    public Product findByid(int id);
    public boolean huifu(int id);
}
