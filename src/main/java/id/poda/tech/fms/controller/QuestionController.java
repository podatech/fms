package id.poda.tech.fms.controller;

import id.poda.tech.fms.model.question.Question;
import id.poda.tech.fms.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "question")
public class QuestionController {
    private QuestionService questionService;

    public void askQuestions(@RequestBody Question q){
        questionService.publish(q);
    }
}
