package domain;

import java.sql.Date;

public class User {
    private int id;
    private String username;
    private String emp_name;
    private String password;
    private String sex;
    private String birthday;
    private String hire_date;
    private String position;
    private String qualification;
    private String experience;
    private String flag;
    private int super_id;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", emp_name='" + emp_name + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", birthday='" + birthday + '\'' +
                ", hire_date='" + hire_date + '\'' +
                ", position='" + position + '\'' +
                ", qualification='" + qualification + '\'' +
                ", experience='" + experience + '\'' +
                ", flag='" + flag + '\'' +
                ", super_id=" + super_id +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmp_name() {
        return emp_name;
    }

    public void setEmp_nam(String emp_nam) {
        this.emp_name = emp_name;
    }

    public void setEmp_name(String emp_name) {
        this.emp_name = emp_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getHire_date() {
        return hire_date;
    }

    public void setHire_date(String hire_date) {
        this.hire_date = hire_date;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public int getSuper_id() {
        return super_id;
    }

    public void setSuper_id(int super_id) {
        this.super_id = super_id;
    }
}
