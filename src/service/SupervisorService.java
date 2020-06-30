package service;

import domain.Plan;
import domain.Task;

import java.util.List;

public interface SupervisorService {
    public List<Task> FinTask();
    public Task findTaskId(int id);
    public List<Plan> findPlan();
    public Plan findPlanId(int id);
    public void addTask(Task task);
    public void updateTask(int id,Task task);
    public void updateTaskState(int id,String state);
    public void delTaskId(int id);
}
