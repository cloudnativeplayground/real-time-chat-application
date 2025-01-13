@echo off
:: Set base directory
set BASE_DIR=real-time-chat-application

:: Create folder structure
mkdir %BASE_DIR%\src\main\java\com\cloudnativeplayground\chatapp\config
mkdir %BASE_DIR%\src\main\java\com\cloudnativeplayground\chatapp\controller
mkdir %BASE_DIR%\src\main\java\com\cloudnativeplayground\chatapp\model
mkdir %BASE_DIR%\src\main\java\com\cloudnativeplayground\chatapp\service
mkdir %BASE_DIR%\src\main\resources\static\css
mkdir %BASE_DIR%\src\main\resources\static\js
mkdir %BASE_DIR%\src\test\java\com\cloudnativeplayground\chatapp
mkdir %BASE_DIR%\docker

:: Create empty files
type nul > %BASE_DIR%\src\main\java\com\cloudnativeplayground\chatapp\config\WebSocketConfig.java
type nul > %BASE_DIR%\src\main\java\com\cloudnativeplayground\chatapp\controller\ChatController.java
type nul > %BASE_DIR%\src\main\java\com\cloudnativeplayground\chatapp\controller\WebSocketEventListener.java
type nul > %BASE_DIR%\src\main\java\com\cloudnativeplayground\chatapp\model\ChatMessage.java
type nul > %BASE_DIR%\src\main\java\com\cloudnativeplayground\chatapp\model\UserStatus.java
type nul > %BASE_DIR%\src\main\java\com\cloudnativeplayground\chatapp\service\ChatService.java
type nul > %BASE_DIR%\src\main\java\com\cloudnativeplayground\chatapp\service\UserStatusService.java
type nul > %BASE_DIR%\src\main\java\com\cloudnativeplayground\chatapp\RealTimeChatApplication.java
type nul > %BASE_DIR%\src\main\resources\application.properties
type nul > %BASE_DIR%\src\main\resources\static\index.html
type nul > %BASE_DIR%\src\main\resources\static\css\styles.css
type nul > %BASE_DIR%\src\main\resources\static\js\scripts.js
type nul > %BASE_DIR%\src\test\java\com\cloudnativeplayground\chatapp\ChatControllerTest.java
type nul > %BASE_DIR%\src\test\java\com\cloudnativeplayground\chatapp\WebSocketIntegrationTest.java
type nul > %BASE_DIR%\docker\Dockerfile
type nul > %BASE_DIR%\docker\docker-compose.yml
type nul > %BASE_DIR%\.gitignore
type nul > %BASE_DIR%\LICENSE
type nul > %BASE_DIR%\README.md
type nul > %BASE_DIR%\pom.xml

echo Folder structure and empty files created successfully!
pause
