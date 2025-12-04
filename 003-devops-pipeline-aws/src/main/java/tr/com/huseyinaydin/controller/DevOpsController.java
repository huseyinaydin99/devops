package tr.com.huseyinaydin.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

//http://localhost:8083
@RestController
@RequestMapping
public class DevOpsController {

    //http://localhost:8083
    @GetMapping
    public String devopsHello() {
        System.out.println("DevOps Merhaba gardaş : " + LocalDateTime.now());
        return "DevOps Maraba baba : " + LocalDateTime.now();
    }

    //http://localhost:8083/info
    @GetMapping("/info")
    public String info() {
        System.out.println("DEVOPS INFO : " + LocalDateTime.now());
        //return "DEVOPS INFO : " + LocalDateTime.now();
        return "DEVOPS INFO : ";
    }
}