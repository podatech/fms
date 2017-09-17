package id.poda.tech.fms.controller;

import id.poda.tech.fms.model.question.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "fms/api/v1")
public class WebController {
    @Autowired
    private QuestionController questionController;

    @PostMapping(value = "/questions")
    public void act(@RequestBody Question q){
        questionController.askQuestions(q);
    }
}
