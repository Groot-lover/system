package service;

import domain.Plan;
import domain.ResultPlan;

import java.util.List;

public interface EmployeeService {
    public void delPlan(int id);
    public void addPlan(Plan plan);
    public void updatePlan(int id,String plan_state,String feedback,String plan_feedback);
    public List<Plan> findLike(ResultPlan resultPlan);
}
