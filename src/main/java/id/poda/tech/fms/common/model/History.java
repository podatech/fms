package id.poda.tech.fms.common.model;

import java.sql.Timestamp;

public abstract class History {
    protected Timestamp createdDate;
    protected String createdBy;
    protected Timestamp updatedDate;
    protected String updatedBy;
}
