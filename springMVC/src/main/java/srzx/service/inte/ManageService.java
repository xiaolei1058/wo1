package srzx.service.inte;

import srzx.engine.Manage;
import srzx.engine.Menu;

import java.util.List;

public interface ManageService {
    public boolean delete(int id);
    public boolean add(Manage manage);
    public List<Manage> findAll();
    public Manage login(Manage manage);
    public boolean update(Manage manage);
    public Manage findByid(int id);
    public List<Menu> findmenu(Integer role);
}
