package srzx.engine;

import java.util.List;

public class Menu {
    private  int id;
    private String name;
    private String url;
    private int pid;
    private int del;
    private List<Menu> son;

    @Override
    public String toString() {
        return "Menu{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                ", pid=" + pid +
                ", del=" + del +
                ", son=" + son +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getDel() {
        return del;
    }

    public void setDel(int del) {
        this.del = del;
    }

    public List<Menu> getSon() {
        return son;
    }

    public void setSon(List<Menu> son) {
        this.son = son;
    }

    public Menu(int id, String name, String url, int pid, int del, List<Menu> son) {
        this.id = id;
        this.name = name;
        this.url = url;
        this.pid = pid;
        this.del = del;
        this.son = son;
    }

    public Menu() {
    }
}
