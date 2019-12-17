package com.aac.pid;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
public class PidApplication {

    public static void main(String[] args) {
        SpringApplication.run(PidApplication.class, args);
    }
}