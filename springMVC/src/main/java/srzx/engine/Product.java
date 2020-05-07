package srzx.engine;

public class Product {
    private int id;
    private String name;
    private String account;
    private String intro;
    private double j_price;
    private double s_price;
    private double y_price;
    private int store;
    private String pics;
    private int sell;
    private int watch;
    private  String addtime;
    private int status;
    private int is_top;
    private int t_id;

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", account='" + account + '\'' +
                ", intro='" + intro + '\'' +
                ", j_price=" + j_price +
                ", s_price=" + s_price +
                ", y_price=" + y_price +
                ", store=" + store +
                ", pics='" + pics + '\'' +
                ", sell=" + sell +
                ", watch=" + watch +
                ", addtime='" + addtime + '\'' +
                ", status=" + status +
                ", is_top=" + is_top +
                ", t_id=" + t_id +
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

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public double getJ_price() {
        return j_price;
    }

    public void setJ_price(double j_price) {
        this.j_price = j_price;
    }

    public double getS_price() {
        return s_price;
    }

    public void setS_price(double s_price) {
        this.s_price = s_price;
    }

    public double getY_price() {
        return y_price;
    }

    public void setY_price(double y_price) {
        this.y_price = y_price;
    }

    public int getStore() {
        return store;
    }

    public void setStore(int store) {
        this.store = store;
    }

    public String getPics() {
        return pics;
    }

    public void setPics(String pics) {
        this.pics = pics;
    }

    public int getSell() {
        return sell;
    }

    public void setSell(int sell) {
        this.sell = sell;
    }

    public int getWatch() {
        return watch;
    }

    public void setWatch(int watch) {
        this.watch = watch;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getIs_top() {
        return is_top;
    }

    public void setIs_top(int is_top) {
        this.is_top = is_top;
    }

    public int getT_id() {
        return t_id;
    }

    public void setT_id(int t_id) {
        this.t_id = t_id;
    }

    public Product(String name, String account, String intro, double j_price, double s_price, double y_price, int store, String pics, int sell, int watch, String addtime, int status, int is_top, int t_id) {
        this.name = name;
        this.account = account;
        this.intro = intro;
        this.j_price = j_price;
        this.s_price = s_price;
        this.y_price = y_price;
        this.store = store;
        this.pics = pics;
        this.sell = sell;
        this.watch = watch;
        this.addtime = addtime;
        this.status = status;
        this.is_top = is_top;
        this.t_id = t_id;
    }

    public Product(int id, String name, String account, String intro, double j_price, double s_price, double y_price, int store, String pics, int sell, int watch, String addtime, int status, int is_top, int t_id) {
        this.id = id;
        this.name = name;
        this.account = account;
        this.intro = intro;
        this.j_price = j_price;
        this.s_price = s_price;
        this.y_price = y_price;
        this.store = store;
        this.pics = pics;
        this.sell = sell;
        this.watch = watch;
        this.addtime = addtime;
        this.status = status;
        this.is_top = is_top;
        this.t_id = t_id;
    }

    public Product() {
    }
}