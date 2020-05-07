package srzx.engine;

public class Orderitem {
    private int oi_id;
    private int o_id;
    private  int p_id;
    private int num;
    private double price;

    @Override
    public String toString() {
        return "Orderitem{" +
                "oI_id=" + oi_id +
                ", o_id=" + o_id +
                ", p_id=" + p_id +
                ", num=" + num +
                ", price=" + price +
                '}';
    }

    public int getoI_id() {
        return oi_id;
    }

    public void setoI_id(int oI_id) {
        this.oi_id = oI_id;
    }

    public int getO_id() {
        return o_id;
    }

    public void setO_id(int o_id) {
        this.o_id = o_id;
    }

    public int getP_id() {
        return p_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Orderitem(int o_id, int p_id, int num, double price) {
        this.o_id = o_id;
        this.p_id = p_id;
        this.num = num;
        this.price = price;
    }

    public Orderitem(int oI_id, int o_id, int p_id, int num, double price) {
        this.oi_id = oI_id;
        this.o_id = o_id;
        this.p_id = p_id;
        this.num = num;
        this.price = price;
    }

    public Orderitem() {
    }
}
