package ru.otus.microservicearchitecture;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class HealthResponse {
    private String status;
}
