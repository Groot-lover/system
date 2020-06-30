package dao.impl;

import dao.SupervisorDao;
import domain.Plan;
import domain.Task;
import domain.User;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import util.JDBCUtils;

import java.util.List;

public class SupervisorDaoImp implements SupervisorDao {
    private JdbcTemplate template =new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public List<Task> findTask() {
        String sql="select * from task";
        List<Task> tasks=template.query(sql,new BeanPropertyRowMapper<Task>(Task.class));
        System.out.println(sql);
        return tasks;
    }

    @Override
    public Task findTaskId(int id) {
        String sql="select * from task where id=?";
        Task task =template.queryForObject(sql,new BeanPropertyRowMapper<Task>(Task.class),id);
        System.out.println(sql);
        return task ;
    }

    @Override
    public List<Plan> findPlan() {
        String sql="select * from plan";
        List<Plan> plans=template.query(sql,new BeanPropertyRowMapper<Plan>(Plan.class));
        System.out.println(sql);
        return plans;
    }

    @Override
    public Plan findPlanId(int id) {
        String sql="select * from plan where id=?";
        Plan plan =template.queryForObject(sql,new BeanPropertyRowMapper<Plan>(Plan.class),id);
        System.out.println(sql);
        return plan ;
    }

    @Override
    public void addTask(Task task) {
        String sql="insert into task " +
                "(task_name,task_start_t,task_end_t,staff_id,task_description,task_state) " +
                "values(?,?,?,?,?,?)";
        template.update(sql, task.getTask_name(),task.getTask_start_t(),task.getTask_end_t(),task.getStaff_id()
            ,task.getTask_description(),task.getTask_state());
        System.out.println(sql);
    }

    @Override
    public void updateTask(int id, Task task) {
        String sql="update task set task_name=?,task_start_t=?,task_end_t=?,staff_id=?,task_description=?," +
                "task_state=? where id=?";
        template.update(sql,task.getTask_name(),task.getTask_start_t(),task.getTask_end_t(),task.getStaff_id()
                ,task.getTask_description(),task.getTask_state(),id);
        System.out.println(sql);
    }

    @Override
    public void updateTaskState(int id, String state) {
        String sql="update task set task_state=? where id=?";
        template.update(sql,state,id);
        System.out.println(sql);
    }

    @Override
    public void delTaskId(int id) {
        String sql="delete from task where id=?";
        template.update(sql,id);
        System.out.println(sql);
    }
}
