# Beginner's Guide to Swagger/OpenAPI

## 📝 Overview
Swagger (now known as OpenAPI) is a framework for designing, building, and documenting RESTful APIs.

## 1. Understanding OpenAPI Specification
- Written in **YAML** or **JSON**.
- Describes endpoints, request/response formats, and authentication.

Example:
```yaml
openapi: 3.0.0
info:
  title: Sample API
  version: 1.0.0
paths:
  /users:
    get:
      summary: Get all users
      responses:
        '200':
          description: A list of users
```

## 2. Using Swagger UI
- Visualizes OpenAPI docs.
- Try out API calls directly from the browser.

## 3. Creating OpenAPI Docs
Tools:
- **Swagger Editor**: [https://editor.swagger.io/](https://editor.swagger.io/)
- **Stoplight Studio**
- **Redocly**

## 4. Best Practices
- Keep documentation updated with API changes.
- Use examples for requests/responses.
- Define error codes and messages.

---
