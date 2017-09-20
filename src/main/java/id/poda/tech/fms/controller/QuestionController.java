package id.poda.tech.fms.controller;

import id.poda.tech.fms.common.response.Web;
import id.poda.tech.fms.model.question.Question;
import id.poda.tech.fms.repository.QuestionRepository;
import id.poda.tech.fms.service.question.QuestionService;
import id.poda.tech.fms.service.question.QuestionServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.ResourceSupport;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;


@RestController
@RequestMapping(value = "fms/api/v1/questions")
public class QuestionController {
    @Autowired
    private QuestionRepository qr;

    @GetMapping()
    @ResponseStatus(HttpStatus.OK)
    @CrossOrigin("*")
    public Web showList(){
        List<Question> listQuestions = qr.findAll();
        for (final Question q: listQuestions) {
            String idQuestion = q.getIdQuestion();
            Link selfLink = linkTo(QuestionController.class).slash(q.getIdQuestion()).withSelfRel();
            q.add(selfLink);
        }
        Map data = new HashMap();
        data.put("total",listQuestions.size());
        data.put("data",listQuestions);
        Web result = new Web(200,"Success",data);
        return result;
    }
}
