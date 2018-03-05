package com.siwoo.application.config;

import com.siwoo.application.domain.Singer;
import com.siwoo.application.repository.SingerRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.time.LocalDate;

@Service @Slf4j
public class DBInitializer {

    @Autowired
    SingerRepository singerRepository;

    @PostConstruct
    private void initDB() {
        log.info("Starting database initialization...");
        Singer singer = new Singer();
        singer.setFirstName("John");
        singer.setLastName("Mayer");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("Eric");
        singer.setLastName("Clapton");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("John");
        singer.setLastName("Butler");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("B.B.");
        singer.setLastName("King");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("Jimi");
        singer.setLastName("Hendrix");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("Jimmy");
        singer.setLastName("Page");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("Eddie");
        singer.setLastName("Van Halen");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("Saul (Slash)");
        singer.setLastName("Hudson");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("Stevie");
        singer.setLastName("Ray Vaughan");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("David");
        singer.setLastName("Gilmour");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("Kirk");
        singer.setLastName("Hammett");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("Angus");
        singer.setLastName("Young");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("Dimebag");
        singer.setLastName("Darrell");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        singer = new Singer();
        singer.setFirstName("Carlos");
        singer.setLastName("Santana");
        singer.setBirthDate(LocalDate.now());
        singerRepository.save(singer);

        log.info("Database initialization finished.");
    }
}
