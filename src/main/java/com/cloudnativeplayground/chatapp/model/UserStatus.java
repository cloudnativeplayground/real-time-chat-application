package com.cloudnativeplayground.chatapp.model;

import lombok.Data;

@Data
public class UserStatus {
    private String username;
    private boolean online;
}
