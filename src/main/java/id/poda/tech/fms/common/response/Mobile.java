package id.poda.tech.fms.common.response;

import java.util.List;

public class Mobile<T> {
    private Integer status;
    private String message;
    private List<T> data;

    public Mobile(){}

    public Mobile(Integer status, String message, List<T> data) {
        this.status = status;
        this.message = message;
        this.data = data;
    }

    public Integer getStatus() {
        return status;
    }

    public String getMessage() {
        return message;
    }

    public List<T> getData() {
        return data;
    }
}
