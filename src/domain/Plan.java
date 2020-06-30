package domain;

public class Plan {
    private int id;
    private String plan_name;
    private String plan_state;
    private String feedback;
    private String plan_start_time;
    private String plan_end_time;
    private String plan_description;
    private String plan_feedback;
    private int task_id;

    @Override
    public String toString() {
        return "Plan{" +
                "id=" + id +
                ", plan_name='" + plan_name + '\'' +
                ", plan_state='" + plan_state + '\'' +
                ", feedback='" + feedback + '\'' +
                ", plan_start_time='" + plan_start_time + '\'' +
                ", plan_end_time='" + plan_end_time + '\'' +
                ", plan_description='" + plan_description + '\'' +
                ", plan_feedback='" + plan_feedback + '\'' +
                ", task_id=" + task_id +
                '}';
    }

    public String getPlan_state() {
        return plan_state;
    }

    public void setPlan_state(String plan_state) {
        this.plan_state = plan_state;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPlan_name() {
        return plan_name;
    }

    public void setPlan_name(String plan_name) {
        this.plan_name = plan_name;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public String getPlan_start_time() {
        return plan_start_time;
    }

    public void setPlan_start_time(String plan_start_time) {
        this.plan_start_time = plan_start_time;
    }

    public String getPlan_end_time() {
        return plan_end_time;
    }

    public void setPlan_end_time(String plan_end_time) {
        this.plan_end_time = plan_end_time;
    }

    public String getPlan_description() {
        return plan_description;
    }

    public void setPlan_description(String plan_description) {
        this.plan_description = plan_description;
    }

    public String getPlan_feedback() {
        return plan_feedback;
    }

    public void setPlan_feedback(String plan_feedback) {
        this.plan_feedback = plan_feedback;
    }

    public int getTask_id() {
        return task_id;
    }

    public void setTask_id(int task_id) {
        this.task_id = task_id;
    }
}
