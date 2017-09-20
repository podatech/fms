package id.poda.tech.fms.repository;

import id.poda.tech.fms.model.question.Question;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface QuestionRepository extends CrudRepository<Question, String> {
    public List<Question> findAll();
}