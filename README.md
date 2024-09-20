This resource allows you to easily create custom GUI messages instead of using the standard chatbox here’s how to use it:

Server-Side Usage:
To display a message from the server, use the following syntax:
```lua
exports["guimessages"]:outputServer(root, "Your message here", r, g, b)
```
Example:
```lua
exports["guimessages"]:outputServer(root, "Server-side message", 204, 51, 255)
```
Client-Side Usage:
To display a message from the client, use this syntax:
```lua
exports["guimessages"]:outputClient("Your message here", r, g, b)
```
Example:
```lua
exports["guimessages"]:outputClient("Client message", 204, 51, 255)
```
Parameters:

• message: The text you want to display.

• r, g, b: The RGB values for the message color (0-255).
