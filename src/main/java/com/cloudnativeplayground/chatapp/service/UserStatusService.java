package com.cloudnativeplayground.chatapp.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;


@Service
public class UserStatusService {
    private final Map<String, String> userStatus = new HashMap<>();

    public void updateUserStatus(String user, String status) {
        userStatus.put(user, status);
    }

    public String getUserStatus(String user) {
        return userStatus.getOrDefault(user, "offline");
    }
}