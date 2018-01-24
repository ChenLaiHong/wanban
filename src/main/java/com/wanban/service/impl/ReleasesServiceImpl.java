package com.wanban.service.impl;

import com.wanban.dao.ReleasesMapper;
import com.wanban.pojo.Releases;
import com.wanban.service.ReleasesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by CHLaih on 2018/1/24.
 */
@Service
public class ReleasesServiceImpl implements ReleasesService {
    @Autowired
    private ReleasesMapper releasesMapper;

    @Override
    public int add(Releases releases) {
        return releasesMapper.insertSelective(releases);
    }
}
