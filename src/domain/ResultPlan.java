package domain;

public class ResultPlan {
    private String plan_name;
    private int task_id;
    private String start_time1;
    private String start_time2;
    private String end_time1;
    private String end_time2;
    private String feedback;

    @Override
    public String toString() {
        return "ResultPlan{" +
                "plan_name='" + plan_name + '\'' +
                ", task_id=" + task_id +
                ", start_time1='" + start_time1 + '\'' +
                ", start_time2='" + start_time2 + '\'' +
                ", end_time1='" + end_time1 + '\'' +
                ", end_time2='" + end_time2 + '\'' +
                ", feedback='" + feedback + '\'' +
                '}';
    }

    public String getPlan_name() {
        return plan_name;
    }

    public void setPlan_name(String plan_name) {
        this.plan_name = plan_name;
    }

    public int getTask_id() {
        return task_id;
    }

    public void setTask_id(int task_id) {
        this.task_id = task_id;
    }

    public String getStart_time1() {
        return start_time1;
    }

    public void setStart_time1(String start_time1) {
        this.start_time1 = start_time1;
    }

    public String getStart_time2() {
        return start_time2;
    }

    public void setStart_time2(String start_time2) {
        this.start_time2 = start_time2;
    }

    public String getEnd_time1() {
        return end_time1;
    }

    public void setEnd_time1(String end_time1) {
        this.end_time1 = end_time1;
    }

    public String getEnd_time2() {
        return end_time2;
    }

    public void setEnd_time2(String end_time2) {
        this.end_time2 = end_time2;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }
}
