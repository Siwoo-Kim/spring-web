package com.siwoo.application.service;

import com.siwoo.application.domain.Singer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface SingerService {
    List<Singer> findAll();

    Singer findById(Long id);

    abstract Singer save(Singer singer);

    Page<Singer> findAllByPage(Pageable pageable);
}
