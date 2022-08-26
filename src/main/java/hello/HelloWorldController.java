package hello;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloWorldController {

    @RequestMapping("/greetings")
    public String index() {
        return "Welcome to CI/CD + Docker Course!";
    }

}