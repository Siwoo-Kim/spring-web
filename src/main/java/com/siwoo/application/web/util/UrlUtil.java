package com.siwoo.application.web.util;

import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

public class UrlUtil {
    public static String encodeUrlPathSegment(String pathSegment, HttpServletRequest request) {
        String encoding = request.getCharacterEncoding();
        if(encoding==null){
            encoding = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment,encoding);
        } catch (UnsupportedEncodingException e) {}
        return pathSegment;
    }
}
