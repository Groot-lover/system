package service.impl;

import dao.SupervisorDao;
import dao.impl.SupervisorDaoImp;
import domain.Plan;
import domain.Task;
import service.SupervisorService;

import java.util.List;

public class SupervisorServiceImp implements SupervisorService {
    SupervisorDao dao=new SupervisorDaoImp();
    @Override
    public List<Task> FinTask() {
        return dao.findTask();
    }

    @Override
    public Task findTaskId(int id) {
        return dao.findTaskId(id);
    }

    @Override
    public List<Plan> findPlan() {
        return dao.findPlan();
    }

    @Override
    public Plan findPlanId(int id) {
        return dao.findPlanId(id);
    }

    @Override
    public void addTask(Task task) {
        dao.addTask(task);
    }

    @Override
    public void updateTask(int id, Task task) {
        dao.updateTask(id,task);
    }

    @Override
    public void updateTaskState(int id, String state) {
        dao.updateTaskState(id,state);
    }

    @Override
    public void delTaskId(int id) {
        dao.delTaskId(id);
    }
}
