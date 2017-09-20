package id.poda.tech.fms.bo;

import id.poda.tech.fms.model.question.Question;

import java.util.List;

public interface QuestionBo {
    public Question publish(Question q);
    public List<Question> list();
}
