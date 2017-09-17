package id.poda.tech.fms.service;

import id.poda.tech.fms.model.question.Question;
import id.poda.tech.fms.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class QuestionService{
    private QuestionRepository qr;

    public void publish(Question q){
        qr.insertData(q);
    }
}
