package id.poda.tech.fms.common.response;

import java.util.Map;

public class Web<T> {
    private Integer status;
    private String message;
    private Map data;

    public Web(Integer status, String message, Map data) {
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

    public Map getData() {
        return data;
    }
}
