package com.cloudnativeplayground.chatapp.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class ChatService {
    private final Map<String, String> messageStore = new HashMap<>();

    public void saveMessage(String user, String message) {
        messageStore.put(user, message);
    }

    public Map<String, String> getAllMessages() {
        return new HashMap<>(messageStore);
    }
}