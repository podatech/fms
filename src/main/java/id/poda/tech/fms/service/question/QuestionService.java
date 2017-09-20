package id.poda.tech.fms.service.question;

import id.poda.tech.fms.model.question.Question;
import id.poda.tech.fms.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public interface QuestionService{
    public List<Question> showAll();
}
