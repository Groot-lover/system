package service.impl;

import dao.EmployeeDao;
import dao.impl.EmployeeDaoImp;
import domain.Plan;
import domain.ResultPlan;
import service.EmployeeService;

import java.util.List;

public class EmployeeServiceImp implements EmployeeService {
    EmployeeDao dao=new EmployeeDaoImp();
    @Override
    public void delPlan(int id) {
        dao.delPlan(id);
    }

    @Override
    public void addPlan(Plan plan) {
         dao.addPlan(plan);
    }

    @Override
    public void updatePlan(int id, String plan_state, String feedback, String plan_feedback) {
        dao.updataPlan(id,plan_state,feedback,plan_feedback);
    }

    @Override
    public List<Plan> findLike(ResultPlan resultPlan){
        return dao.findLike(resultPlan);
    }

}
