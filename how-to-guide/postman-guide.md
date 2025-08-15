# How to Use Postman for API Testing

## 📝 Overview
Postman is a powerful tool for testing and documenting APIs. This guide will help beginners get started with API testing.

## 1. Install Postman
- Download from [https://www.postman.com/downloads/](https://www.postman.com/downloads/)
- Install and launch the application.

## 2. Create a New Request
1. Click **New** → **Request**.
2. Enter the API endpoint URL (e.g., `https://api.example.com/users`).
3. Choose the HTTP method (GET, POST, PUT, DELETE).

## 3. Add Headers & Parameters
- **Headers**: Useful for authentication (`Authorization: Bearer <token>`).
- **Params**: For query strings (e.g., `?page=1`).

## 4. Send the Request
Click **Send** and review the response status, body, and headers.

## 5. Save and Organize Requests
- Use **Collections** to group related requests.
- Share collections with team members.

## 6. Automate Tests
In the **Tests** tab, write JavaScript snippets to validate responses.

Example:
```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```

---
