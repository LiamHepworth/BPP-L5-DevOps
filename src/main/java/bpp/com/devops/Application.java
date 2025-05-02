package bpp.com.devops;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        System.out.println("Starting Application - VERSION: 1");
        SpringApplication.run(Application.class, args);
    }

}
