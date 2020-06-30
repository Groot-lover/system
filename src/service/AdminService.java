package service;

import domain.User;

import java.util.List;

public interface AdminService {
    public List<User> findAll();
    public User findId(int id);
    public void delUser(int id);
    public void addUser(User user);
    public void updateSuperId(int id,int super_id);
}
