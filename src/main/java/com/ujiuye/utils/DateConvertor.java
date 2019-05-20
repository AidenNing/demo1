package com.ujiuye.utils;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 王建东
 * @version V1.0
 * @Package com.ujiuye.utils
 * @ClassName DateConvertor
 * @date 2019/3/29 16:28
 * @Copyright © 北京中公优就业
 */
public class DateConvertor  implements Converter<String, Date> {

    @Override
    public Date convert(String s) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            return sdf.parse(s);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
}
