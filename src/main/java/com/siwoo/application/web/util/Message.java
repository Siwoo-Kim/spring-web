package com.siwoo.application.web.util;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString @Getter
public class Message {
    private String type;
    private String message;

    public Message(String type, String message) {
        this.type = type;
        this.message = message;
    }
}
