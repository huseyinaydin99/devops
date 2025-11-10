package tr.com.huseyinaydin.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

//http://localhost:8080
@RestController
@RequestMapping
public class DevOpsController {

    //http://localhost:8080
    @GetMapping
    public String devopsHello() {
        return "DevOps Merhaba : " + LocalDateTime.now();
    }

    //http://localhost:8080/info
    @GetMapping("/info")
    public String info() {
        return "DEVOPS BILGI : " + LocalDateTime.now();
    }
}