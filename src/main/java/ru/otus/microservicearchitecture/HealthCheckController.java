package ru.otus.microservicearchitecture;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthCheckController {

    @GetMapping("/health")
    public HealthResponse healthCheck(){
        return HealthResponse.builder().status("OK").build();
    }
}
