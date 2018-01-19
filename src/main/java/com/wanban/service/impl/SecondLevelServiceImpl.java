package com.wanban.service.impl;

import com.wanban.dao.SecondLevelMapper;
import com.wanban.pojo.FirstLevel;
import com.wanban.pojo.SecondLevel;
import com.wanban.service.SecondLevelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by CHLaih on 2018/1/18.
 */
@Service
public class SecondLevelServiceImpl implements SecondLevelService{
    @Autowired
    private SecondLevelMapper secondLevelMapper;

    @Override
    public int getFirstLevelId(int i) {
        return secondLevelMapper.getFirstLevelId(i);
    }

    @Override
    public List<FirstLevel> list(Map<String, Object> map) {
        return secondLevelMapper.list(map);
    }

    @Override
    public Long getTotal(Map<String, Object> map) {
        return secondLevelMapper.getTotal(map);
    }

    @Override
    public int deleteSecond(int i) {
        return secondLevelMapper.deleteByPrimaryKey(i);
    }

    @Override
    public int addSecond(SecondLevel secondLevel) {
        return secondLevelMapper.insertSelective(secondLevel);
    }

    @Override
    public int updateSecond(SecondLevel secondLevel) {
        return secondLevelMapper.updateByPrimaryKeySelective(secondLevel);
    }


}
