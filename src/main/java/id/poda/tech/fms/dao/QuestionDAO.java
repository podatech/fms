package id.poda.tech.fms.dao;

import id.poda.tech.fms.model.question.Question;
import org.springframework.data.repository.CrudRepository;

public interface QuestionDAO extends CrudRepository<Question,String>{
}
