package dao.impl;

import dao.AdminDao;
import domain.User;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import util.JDBCUtils;

import java.util.List;

public class AdminDaoImp implements AdminDao {
    private JdbcTemplate template =new JdbcTemplate(JDBCUtils.getDataSource());
    public List<User> findAll() {
        String sql="select * from users";
        List<User> users=template.query(sql,new BeanPropertyRowMapper<User>(User.class));
        System.out.println(sql);
        return users;
    }

    @Override
    public User findId(int id) {
        String sql="select * from users where id=?";
        System.out.println(sql);
        return template.queryForObject(sql,new BeanPropertyRowMapper<User>(User.class),id);
    }

    @Override
    public void delUser(int id) {
        String sqlupdate="update users set super_id=-1 where id=?";
        template.update(sqlupdate,id);
        System.out.println(sqlupdate );
        String sql="delete from users where id=?";
        template.update(sql,id);
        System.out.println(sql);
    }

    @Override
    public void addUser(User user) {
        String sql="insert into users " +
                "(username,password,sex,birthday,hire_date,flag,qualification,experience,super_id,emp_name,position) " +
                "values(?,?,?,?,?,?,?,?,?,?,?)";
        template.update(sql, user.getUsername(),user.getPassword(),user.getSex(),user.getBirthday(),
                user.getHire_date(),user.getFlag(),user.getQualification(),user.getExperience(),user.getSuper_id(),
                user.getEmp_name(),user.getPosition());
        System.out.println(sql);
    }

    @Override
    public void updateSuperId(int id, int super_id) {
        String sql="update users set super_id=? where id=?";
        template.update(sql,super_id,id);
        System.out.println(sql);
    }

}
