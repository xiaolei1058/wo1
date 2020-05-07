package srzx.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import srzx.dao.ClientDao;

import srzx.engine.Client;
import srzx.service.inte.ClientService;
//
//import javax.annotation.Resource;
//@Repository("ClientService")
//public class ClientServiceimpl implements ClientService {
//    @Autowired
//    ClientDao clientDao;
//
//
////@Transactional(readOnly=false,propagation= Propagation.REQUIRED)
//    public boolean update(String cardid, String cardid2,double money) {
//    Client client = clientDao.find(cardid);
//    Client client1 = clientDao.find(cardid2);
//    client.setBanlance(client.getBanlance()-money);
//    client1.setBanlance(client1.getBanlance()+money);
//    boolean update = clientDao.update(client);
//
//
//    boolean update1 = clientDao.update(client1);
//if (update&&update1){
//    return true;
//}
//
//    return false;
//    }
//}
