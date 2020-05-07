package srzx.dao;

import org.apache.ibatis.annotations.Param;
import srzx.engine.Manage;
import srzx.engine.Menu;

import java.util.List;
import java.util.Map;

public interface ManageDao {
    public boolean add(Manage manage);
    public boolean delete(int id);
    public boolean update(Manage manage);
    public List<Manage> findAll();

//    public Manage login(@Param("m_name") String name,@Param("password") String password);
    public Manage findbyidname(@Param("id1") int id,@Param("name1") String name);
    public Manage login(Manage manage);
    public Manage findbyidname1(Map map);
    public List<Manage> findorder(@Param("conn") String con);
    public Map<String,Object> findone();
    public List<Map<String,Object>> getmap();
    public List<Manage> findbyeapper();
    public List<Manage> findbyCon(Manage manage);
    public List<Manage> findByIf(Manage manage);
    public List<Manage> findByChoose(Manage manage);
    public List<Manage> findByTrim(Manage manage);
    public Manage findid(int id);
    // public void update(Manager manager);

    public List<Manage> findByforeach(int[] ids);
    public List<Menu> findmenu(int id);
    public List<Menu> findmenuone(int role);


}
