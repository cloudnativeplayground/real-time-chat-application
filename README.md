# Real-Time Chat Application

**A WebSocket-based application for real-time messaging and group chats.**

## Overview
The Real-Time Chat Application enables instant messaging and group chat capabilities using WebSocket technology. It integrates Spring Boot, Redis, and container orchestration for a scalable, modern chat solution.

---

## Features
- **Instant Messaging**: Real-time communication between users.
- **Group Chats**: Enables users to join and participate in group discussions.
- **Message Persistence**: Stores messages using Redis for durability.
- **User Status Updates**: Displays online/offline status of users.

---

## File Structure

### Source Files
- `src/main/java/com/cloudnativeplayground/chatapp/`
    - **`RealTimeChatApplication.java`**: Entry point of the Spring Boot application.
    - **`config/WebSocketConfig.java`**: Configures WebSocket endpoints and handlers.
    - **`controller/ChatController.java`**: Manages chat-related REST endpoints.
    - **`controller/WebSocketEventListener.java`**: Listens to WebSocket events (e.g., connection, disconnection).
    - **`model/ChatMessage.java`**: Represents chat messages with fields like sender, recipient, content, and timestamp.
    - **`model/UserStatus.java`**: Captures user status (online/offline).
    - **`service/ChatService.java`**: Handles chat-related business logic.
    - **`service/UserStatusService.java`**: Manages user status updates and retrieval.

### Resource Files
- `src/main/resources/`
    - **`application.properties`**: Application-specific configurations (e.g., Redis connection details).
    - **`static/index.html`**: Frontend interface for the chat application.
    - **`static/css/styles.css`**: Styling for the user interface.
    - **`static/js/scripts.js`**: Frontend JavaScript for handling WebSocket communication.

### Test Files
- `src/test/java/com/cloudnativeplayground/chatapp/`
    - **`ChatControllerTest.java`**: Unit tests for chat controller functionalities.
    - **`WebSocketIntegrationTest.java`**: Integration tests for WebSocket features.

### Docker Files
- **`docker/Dockerfile`**: Instructions for containerizing the application.
- **`docker/docker-compose.yml`**: Orchestrates the application with Redis and other services.

### Project Metadata
- **`.gitignore`**: Specifies files and directories to exclude from version control.
- **`LICENSE`**: GNU General Public License v3.0.
- **`README.md`**: This file.
- **`pom.xml`**: Project configuration and dependency management.

---

## Workflow
### 1. User Interaction
Users connect to the WebSocket endpoint using the frontend interface (`index.html`). Messages are sent and received in real time.

### 2. Backend Processing
1. **WebSocket Handling**: Messages are routed through WebSocket endpoints.
2. **Message Storage**: Messages are stored in Redis for persistence.
3. **Broadcasting**: Messages are broadcast to intended recipients or groups.
4. **User Status Updates**: Tracks user availability (online/offline).

---

## Setup Instructions

### Prerequisites
- **Java 17**
- **Maven 3.8.1+**
- **Redis Server**
- **Docker (optional for containerization)**

### Steps to Set Up
1. **Clone the Repository**
   ```bash
   git clone https://github.com/cloudnativeplayground/real-time-chat-application.git
   cd real-time-chat-application
   ```

2. **Build the Application**
   ```bash
   mvn clean install
   ```

3. **Configure Redis**
    - Ensure Redis is running locally or specify the connection details in `application.properties`:
      ```properties
      spring.redis.host=localhost
      spring.redis.port=6379
      ```

4. **Run the Application**
   ```bash
   mvn spring-boot:run
   ```

5. **Access the Application**
   Open your browser and navigate to `http://localhost:8080`.

6. **Use Docker (Optional)**
    - Build and run the application using Docker Compose:
      ```bash
      docker-compose up --build
      ```

---

## License
This project is licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.html).

---

## Maintainer
**Aditya Pratap Bhuyan**
- Senior Architect, Developer, Instructor, and Author
- [LinkedIn Profile](https://linkedin.com/in/adityabhuyan)
- [GitHub](https://github.com/cloudnativeplayground)

---

Feel free to contribute to the project by submitting issues, feature requests, or pull requests on GitHub. Together, let’s make real-time communication seamless and scalable!

