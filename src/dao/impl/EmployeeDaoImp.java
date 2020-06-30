package dao.impl;

import dao.EmployeeDao;
import domain.Plan;
import domain.ResultPlan;
import domain.Task;
import domain.User;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import util.JDBCUtils;

import java.util.List;

public class EmployeeDaoImp implements EmployeeDao {
    private JdbcTemplate template =new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public void delPlan(int id) {
        String sql="delete from plan where id=?";
        template.update(sql,id);
        System.out.println(sql);
    }

    @Override
    public void addPlan(Plan plan) {
        String sql="insert into plan " +
                "(plan_name,plan_description,plan_start_time,plan_end_time,plan_state,feedback,task_id) " +
                "values(?,?,?,?,?,?,?)";
        template.update(sql,plan.getPlan_name(),plan.getPlan_description(),plan.getPlan_start_time(),
                plan.getPlan_end_time(),plan.getPlan_state(),plan.getFeedback(),plan.getTask_id());
        System.out.println(sql);
    }

    @Override
    public void updataPlan(int id, String plan_state, String feedback, String plan_feedback) {
        String sql="update plan set plan_state=?,feedback=?,plan_feedback=? where id=?";
        template.update(sql,plan_state,feedback,plan_feedback,id);
        System.out.println(sql);
    }

    @Override
    public List<Plan> findLike(ResultPlan rPlan) {
        String sql="select * from plan where 1=1 ";
        String sqlx="";
        if (rPlan.getPlan_name()!=null&&!"".equals(rPlan.getPlan_name().trim())){
            sqlx=sqlx+" and plan_name like '%"+rPlan.getPlan_name().trim()+"%'";
        } if (rPlan.getStart_time1()!=null&&!"".equals(rPlan.getStart_time1().trim())&&
                rPlan.getStart_time2()!=null&&!"".equals(rPlan.getStart_time2().trim())){
            sqlx=sqlx+" and plan_start_time between '"+rPlan.getStart_time1().trim()+"' and '"+rPlan.getStart_time2().trim()+"'";
        } if (rPlan.getEnd_time1()!=null&&!"".equals(rPlan.getEnd_time1().trim())&&
                rPlan.getEnd_time2()!=null&&!"".equals(rPlan.getEnd_time2().trim())){
            sqlx=sqlx+" and plan_end_time between '"+rPlan.getEnd_time1().trim()+"' and '"+rPlan.getEnd_time2().trim()+"'";
        } if(rPlan.getFeedback()!=null&&!"".equals(rPlan.getFeedback().trim())){
            System.out.println(rPlan.getFeedback());
            sqlx=sqlx+" and feedback='"+rPlan.getFeedback().trim()+"'";
        } if (rPlan.getTask_id()!=0){
            sqlx=sqlx+" and task_id="+rPlan.getTask_id();
        }
        sql=sql+sqlx;
        System.out.println(sql);
        List<Plan> plans=template.query(sql,new BeanPropertyRowMapper<Plan>(Plan.class));
        return plans;
    }

}
