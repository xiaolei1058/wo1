package srzx.engine;

public class Manage {
    private int id;
    private String name;
    private String password;
private int role;
private int status;

    @Override
    public String toString() {
        return "Manage{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", role=" + role +
                ", status=" + status +
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Manage() {
    }

    public Manage(String name, String password, int role, int status) {
        this.name = name;
        this.password = password;
        this.role = role;
        this.status = status;
    }

    public Manage(int id, String name, String password, int role, int status) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.role = role;
        this.status = status;
    }
}
