package srzx.engine;

public class Client {
    private int id;
    private String idcard;
    private String name;
    private String password;
    private double banlance;

    @Override
    public String toString() {
        return "Client{" +
                "id=" + id +
                ", idcard='" + idcard + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", banlance=" + banlance +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public double getBanlance() {
        return banlance;
    }

    public void setBanlance(double banlance) {
        this.banlance = banlance;
    }

    public Client(int id, String idcard, String name, String password, double banlance) {
        this.id = id;
        this.idcard = idcard;
        this.name = name;
        this.password = password;
        this.banlance = banlance;
    }

    public Client() {
    }
}