package srzx.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import srzx.dao.ManageDao;
import srzx.engine.Manage;
import srzx.engine.Menu;
import srzx.service.inte.ManageService;

import java.util.List;

@Service("manageService")
public class ManageServiceimpl implements ManageService {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public boolean delete(int id) {
        ManageDao mapper = sqlSessionTemplate.getMapper(ManageDao.class);
        boolean delete = mapper.delete(id);

        return delete;
    }

    public boolean add(Manage manage) {
        ManageDao mapper = sqlSessionTemplate.getMapper(ManageDao.class);
        System.out.println(manage);
        boolean add = mapper.add(manage);
        return add;
    }

    @Override
    public List<Manage> findAll() {
        ManageDao mapper = sqlSessionTemplate.getMapper(ManageDao.class);
        List<Manage> all = mapper.findAll();
        return all;
    }

    @Override
    public Manage login(Manage manage) {
        ManageDao mapper = sqlSessionTemplate.getMapper(ManageDao.class);

        Manage login = mapper.login(manage);
        return login;
    }

    @Override
    public boolean update(Manage manage) {
        ManageDao mapper = sqlSessionTemplate.getMapper(ManageDao.class);
        boolean update = mapper.update(manage);
        return update;
    }

    @Override
    public Manage findByid(int id) {
        System.out.println(id);
        ManageDao mapper = sqlSessionTemplate.getMapper(ManageDao.class);
        Manage byid = mapper.findid(id);
        return byid;
    }

    @Override
    public List<Menu> findmenu(Integer role) {
        ManageDao mapper = sqlSessionTemplate.getMapper(ManageDao.class);
        List<Menu> menu = mapper.findmenuone(role);
        for (Menu p:menu) {
            List<Menu> findtwo = mapper.findmenu(p.getId());
           p.setSon(findtwo);

        }
        return menu;


    }
}