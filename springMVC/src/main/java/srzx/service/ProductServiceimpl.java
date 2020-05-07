package srzx.service;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import srzx.dao.ProductDao;
import srzx.engine.Manage;
import srzx.engine.Product;
import srzx.service.inte.ProductService;

import java.util.List;
@Service("productService")
public class ProductServiceimpl implements ProductService {
@Autowired
private SqlSessionTemplate sqlSessionTemplate;
    @Override
    public boolean delete(int id) {
        ProductDao mapper = sqlSessionTemplate.getMapper(ProductDao.class);

        boolean delete = mapper.delete(id);
        return delete;
    }

    @Override
    public boolean add(Product product) {
        ProductDao mapper = sqlSessionTemplate.getMapper(ProductDao.class);
        boolean add = mapper.add(product);
        return add;
    }

    @Override
    public List<Product> findAll() {
        System.out.println("1111111");
        ProductDao mapper = sqlSessionTemplate.getMapper(ProductDao.class);
        System.out.println("2222222222222");
        List<Product> all = mapper.findAll();
        System.out.println("444444444444");
        return all;
    }

    @Override
    public Product login(Product product) {
        return null;
    }

    @Override
    public boolean update(Product product) {
        ProductDao mapper = sqlSessionTemplate.getMapper(ProductDao.class);
        boolean update = mapper.update(product);
        return update;
    }

    @Override
    public Product findByid(int id) {
        ProductDao mapper = sqlSessionTemplate.getMapper(ProductDao.class);
//        System.out.println("2222222222222");
        Product bySno = mapper.findBySno(id);
        return bySno;
    }

    @Override
    public boolean huifu(int id) {
        ProductDao mapper = sqlSessionTemplate.getMapper(ProductDao.class);
        boolean huifu = mapper.huifu(id);
        return huifu;

    }
}
