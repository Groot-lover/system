package domain;

public class Task {
    private int id;
    private String task_name;
    private String task_start_t;
    private String task_end_t;
    private String task_description;
    private String task_state;
    private String staff_id;
    private String super_id;

    @Override
    public String toString() {
        return "Task{" +
                "id=" + id +
                ", task_name='" + task_name + '\'' +
                ", task_start_t='" + task_start_t + '\'' +
                ", task_end_t='" + task_end_t + '\'' +
                ", task_description='" + task_description + '\'' +
                ", task_state='" + task_state + '\'' +
                ", staff_id='" + staff_id + '\'' +
                ", super_id='" + super_id + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTask_name() {
        return task_name;
    }

    public void setTask_name(String task_name) {
        this.task_name = task_name;
    }

    public String getTask_start_t() {
        return task_start_t;
    }

    public void setTask_start_t(String task_start_t) {
        this.task_start_t = task_start_t;
    }

    public String getTask_end_t() {
        return task_end_t;
    }

    public void setTask_end_t(String task_end_t) {
        this.task_end_t = task_end_t;
    }

    public String getTask_description() {
        return task_description;
    }

    public void setTask_description(String task_description) {
        this.task_description = task_description;
    }

    public String getTask_state() {
        return task_state;
    }

    public void setTask_state(String task_state) {
        this.task_state = task_state;
    }

    public String getStaff_id() {
        return staff_id;
    }

    public void setStaff_id(String staff_id) {
        this.staff_id = staff_id;
    }

    public String getSuper_id() {
        return super_id;
    }

    public void setSuper_id(String super_id) {
        this.super_id = super_id;
    }
}
