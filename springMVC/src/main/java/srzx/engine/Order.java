package srzx.engine;

public class Order {
    private int o_id;
    private  int c_id;
    private String addtime;
    private String paytime;
    private double money;
    private int status;
    private String note;
    private  String paytype;
    private String payodernum;

    private String sendtype;
    private String sendordernum;
  private String address;
    private  String detail;
    private String name;
    private String tel;
    private int code;

    public int getO_id() {
        return o_id;
    }

    public void setO_id(int o_id) {
        this.o_id = o_id;
    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public String getPaytime() {
        return paytime;
    }

    public void setPaytime(String paytime) {
        this.paytime = paytime;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getPaytype() {
        return paytype;
    }

    public void setPaytype(String paytype) {
        this.paytype = paytype;
    }

    public String getPayodernum() {
        return payodernum;
    }

    public void setPayodernum(String payodernum) {
        this.payodernum = payodernum;
    }

    public String getSendtype() {
        return sendtype;
    }

    public void setSendtype(String sendtype) {
        this.sendtype = sendtype;
    }

    public String getSendordernum() {
        return sendordernum;
    }

    public void setSendordernum(String sendordernum) {
        this.sendordernum = sendordernum;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "Order{" +
                "o_id=" + o_id +
                ", c_id=" + c_id +
                ", addtime='" + addtime + '\'' +
                ", paytime='" + paytime + '\'' +
                ", money=" + money +
                ", status=" + status +
                ", note='" + note + '\'' +
                ", paytype='" + paytype + '\'' +
                ", payodernum='" + payodernum + '\'' +
                ", sendtype='" + sendtype + '\'' +
                ", sendordernum='" + sendordernum + '\'' +
                ", address='" + address + '\'' +
                ", detail='" + detail + '\'' +
                ", name='" + name + '\'' +
                ", tel='" + tel + '\'' +
                ", code=" + code +
                '}';
    }

    public Order(int c_id, String addtime, String paytime, double money, int status, String note, String paytype, String payodernum, String sendtype, String sendordernum, String address, String detail, String name, String tel, int code) {
        this.c_id = c_id;
        this.addtime = addtime;
        this.paytime = paytime;
        this.money = money;
        this.status = status;
        this.note = note;
        this.paytype = paytype;
        this.payodernum = payodernum;
        this.sendtype = sendtype;
        this.sendordernum = sendordernum;
        this.address = address;
        this.detail = detail;
        this.name = name;
        this.tel = tel;
        this.code = code;
    }

    public Order(int o_id, int c_id, String addtime, String paytime, double money, int status, String note, String paytype, String payodernum, String sendtype, String sendordernum, String address, String detail, String name, String tel, int code) {
        this.o_id = o_id;
        this.c_id = c_id;
        this.addtime = addtime;
        this.paytime = paytime;
        this.money = money;
        this.status = status;
        this.note = note;
        this.paytype = paytype;
        this.payodernum = payodernum;
        this.sendtype = sendtype;
        this.sendordernum = sendordernum;
        this.address = address;
        this.detail = detail;
        this.name = name;
        this.tel = tel;
        this.code = code;
    }

    public Order() {
    }
}
