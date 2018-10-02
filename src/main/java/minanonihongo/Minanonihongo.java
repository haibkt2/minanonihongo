
package minanonihongo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import minanonihongo.controller.MinanonihongoController;


@SpringBootApplication
public class Minanonihongo {

    public static void main(String[] args) {
        SpringApplication.run(Minanonihongo.class, args);
    }
}
