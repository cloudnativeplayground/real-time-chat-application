package com.cloudnativeplayground.chatapp;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.server.LocalServerPort;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class WebSocketIntegrationTest {

    @LocalServerPort
    private int port;

    @Test
    public void testWebSocketConnection() {
        String url = "http://localhost:" + port + "/websocket-endpoint";
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);

        assertEquals(200, response.getStatusCodeValue());
    }
}

 /*The test class is annotated with  @SpringBootTest  and  @LocalServerPort  to start the application and get the port number. The  testWebSocketConnection  method sends a GET request to the WebSocket endpoint and asserts that the response status code is 200.
 Run the test using the following command:
 mvn test -Dtest=WebSocketIntegrationTest

 The test should pass, and you should see the following output:
 [INFO] -------------------------------------------------------*/