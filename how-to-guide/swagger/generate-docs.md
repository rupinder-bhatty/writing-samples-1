# How to Generate API Documentation Using Swagger/OpenAPI

This guide shows how to generate interactive API documentation from an OpenAPI specification using **Swagger UI** or **Swagger Editor**.

---

## **1. Prepare Your OpenAPI Specification**
The OpenAPI spec can be in **YAML** or **JSON** format. Example (`openapi.yaml`):

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
          content:
            application/json:
              schema:
                type: array
                items:
                  type: object
                  properties:
                    id:
                      type: integer
                    name:
                      type: string
```

---

## **2. Use Swagger Editor (Online)**
1. Go to [https://editor.swagger.io](https://editor.swagger.io).
2. Paste your OpenAPI YAML/JSON into the left panel.
3. The right panel will render **interactive API documentation**.
4. Use the **"Try it out"** feature to test API endpoints directly.

---

## **3. Serve Documentation Locally with Swagger UI**
1. Download **Swagger UI** from [https://github.com/swagger-api/swagger-ui](https://github.com/swagger-api/swagger-ui).
2. Unzip the folder and open `index.html` in a text editor.
3. Replace the default URL with your OpenAPI file URL:
   ```javascript
   const ui = SwaggerUIBundle({
     url: "https://example.com/openapi.yaml",
     dom_id: '#swagger-ui',
   });
   ```
4. Open `index.html` in your browser to see your documentation.

---

## **4. Host Documentation Online**
- Upload your `openapi.yaml` to a public URL (e.g., GitHub Pages).
- Point Swagger UI or Swagger Editor to that URL.
- Share the link with your team or customers.

---

## **5. Generate Static HTML Docs**
If you want downloadable documentation:
- Use tools like [Redoc](https://github.com/Redocly/redoc) for a clean static HTML version:
  ```bash
  npx redoc-cli bundle openapi.yaml
  ```
- This generates `redoc-static.html`, which you can host anywhere.

---

✅ **You have successfully generated interactive API documentation from an OpenAPI spec.**

