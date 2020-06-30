package service.impl;

import dao.AdminDao;
import dao.impl.AdminDaoImp;
import domain.User;
import service.AdminService;

import java.util.List;

public class AdminServiceImp implements AdminService {
    private AdminDao dao=new AdminDaoImp();
    @Override
    public List<User> findAll() {
        return dao.findAll();
    }

    @Override
    public User findId(int id) {
        return dao.findId(id);
    }

    @Override
    public void delUser(int id) {
        dao.delUser(id);
    }

    @Override
    public void addUser(User user) {
        dao.addUser(user);
    }

    @Override
    public void updateSuperId(int id, int super_id) {
        dao.updateSuperId(id,super_id);
    }
}
