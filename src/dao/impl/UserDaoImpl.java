package dao.impl;

import dao.UserDao;
import domain.User;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import util.JDBCUtils;

import java.util.List;

public class UserDaoImpl implements UserDao {
    private JdbcTemplate template =new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public User login(User loginUser) {
        try{
            String sql="select * from users where username=? and password=? and flag=?";
            User users =template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), loginUser.getUsername(),loginUser.getPassword(),loginUser.getFlag());
            System.out.println(sql);
            return users;
        }catch (Exception e){
            return null;
        }
    }
}
