package com.siwoo.application.service;

import com.siwoo.application.repository.SingerRepository;
import com.siwoo.application.domain.Singer;
import org.castor.core.util.Assert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("singerService") @Transactional(readOnly = true)
public class SingerServiceImpl implements SingerService {
    @Autowired SingerRepository singerRepository;

    @Override
    public List<Singer> findAll(){
        return singerRepository.findAll();
    }

    @Override
    public Singer findById(Long id){
        Assert.notNull(id,"id must not null");
        return singerRepository.findById(id).orElseThrow(NullPointerException::new);
    }

    @Override @Transactional(readOnly = false)
    public Singer save(Singer singer){
        return singerRepository.save(singer);
    }

    @Override
    public Page<Singer> findAllByPage(Pageable pageable){
        Assert.notNull(pageable,"pageable must not null");
        return singerRepository.findAll(pageable);
    }

}
