// Establish WebSocket connection
const socket = new WebSocket('ws://localhost:8080/chat');

// DOM Elements
const messageInput = document.getElementById('messageInput');
const sendButton = document.getElementById('sendButton');
const chatWindow = document.getElementById('chatWindow');

// Event listener to send message
sendButton.addEventListener('click', () => {
    const message = messageInput.value;
    if (message) {
        const chatMessage = {
            type: 'CHAT',
            content: message,
            sender: 'User1', // Replace with dynamic user identification
        };
        socket.send(JSON.stringify(chatMessage));
        messageInput.value = '';
    }
});

// Listen for incoming messages
socket.addEventListener('message', (event) => {
    const chatMessage = JSON.parse(event.data);
    const messageElement = document.createElement('div');
    messageElement.textContent = `${chatMessage.sender}: ${chatMessage.content}`;
    chatWindow.appendChild(messageElement);
});

// Handle WebSocket connection open event
socket.addEventListener('open', () => {
    console.log('WebSocket connection established');
});

// Handle WebSocket connection close event
socket.addEventListener('close', () => {
    console.log('WebSocket connection closed');
});
