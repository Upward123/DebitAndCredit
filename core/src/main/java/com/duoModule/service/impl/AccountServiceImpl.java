package com.duoModule.service.impl;

import com.duoModule.domain.Account;
import com.duoModule.mapper.AccountMapper;
import com.duoModule.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements IAccountService {

    @Autowired
    private AccountMapper accountMapper;

    @Override
    public Account getAccountById(int id) {
        return accountMapper.selectByPrimaryKey(id);
    }
}
