package com.tongge.tools.common.lang;

public class StringUtils {

    public static String nvl(String s0, String s1) {
        if (isBlank(s0)) {
            return s1;
        }
        return s0;
    }

    public static boolean isBlank(String s) {
        if (isEmpty(s) || isEmpty(s.trim())) {
            return true;
        }
        return false;
    }

    public static boolean isEmpty(String s) {
        if (s == null || s.length() == 0) {
            return true;
        }
        return false;
    }

}
