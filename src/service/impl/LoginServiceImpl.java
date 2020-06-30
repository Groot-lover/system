package service.impl;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import domain.User;
import org.apache.commons.beanutils.BeanUtils;
import service.LoginService;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

public class LoginServiceImpl implements LoginService {
    private UserDao dao=new UserDaoImpl();
    public User login(User loginUser){
        User  users=dao.login(loginUser);
        return users;
    }
}
