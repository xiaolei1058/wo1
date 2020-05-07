package srzx.dao;

import org.apache.ibatis.annotations.Update;
import srzx.engine.Client;

public interface ClientDao {
//    @Update("Update client set balance=#{} where idcard=#{}")
    public boolean update(Client client);
public Client find(String cardid);
}
