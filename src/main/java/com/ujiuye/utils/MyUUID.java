package com.ujiuye.utils;

import java.util.UUID;

import static java.util.UUID.*;

/**
 * @author 王建东
 * @version V1.0
 * @Package com.ujiuye.utils
 * @ClassName MyUUID
 * @date 2019/4/1 16:11
 * @Copyright © 北京中公优就业
 */
public class MyUUID {

    public static String getMyUUID(){
       String uuid  = UUID.randomUUID().toString();
       return uuid;
    }
}
