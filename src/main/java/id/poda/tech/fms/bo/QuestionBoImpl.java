package id.poda.tech.fms.bo;

import id.poda.tech.fms.dao.QuestionDao;
import id.poda.tech.fms.model.question.Question;

import java.util.List;

public class QuestionBoImpl implements QuestionBo {
    private QuestionDao questionDao;

    @Override
    public Question publish(Question q) {
        return questionDao.save(q);
    }

    @Override
    public List<Question> list() {
        return (List<Question>) questionDao.findAll();
    }
}
