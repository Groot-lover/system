package service;

import domain.User;

import java.util.List;
import java.util.Map;

public interface LoginService {
    /**
     * 查询所有好友信息
     */
    public User login(User loginUser);

}
