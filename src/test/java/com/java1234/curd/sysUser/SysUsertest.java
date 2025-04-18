package com.java1234.curd.sysUser;

import com.java1234.service.SysUserService;
import com.java1234.entity.SysUser;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
public class SysUsertest {

    @Autowired
    SysUserService sysUserService;

    @Test
    public void getByUserName(){
        String username = "java1234";
        SysUser byUserName = sysUserService.getByUserName(username);
        System.out.println(byUserName);
    }
}
