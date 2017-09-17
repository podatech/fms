package id.poda.tech.fms.repository;

import id.poda.tech.fms.dao.QuestionDAO;
import id.poda.tech.fms.model.question.Question;
import org.springframework.beans.factory.annotation.Autowired;

public class QuestionRepository{
    @Autowired
    private QuestionDAO questionDAO;

    public Question insertData(Question q){
        return questionDAO.save(q);
    }
}