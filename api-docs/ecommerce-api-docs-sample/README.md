# E-Commerce API Documentation (Sample Project)

This is a fictional e-commerce API documentation project using **Postman** and **Swagger (OpenAPI 3.0)**.

## Features
- **Authentication**: Token-based (Bearer token)
- **Core Endpoints**: Products, Orders, Users
- **Examples**: Requests, Responses, Error formats

## Structure
- `swagger/` → OpenAPI 3.0 YAML specification
- `postman/` → Postman Collection JSON
- `examples/` → Sample request/response files

## Authentication
All endpoints require a valid Bearer token in the `Authorization` header:
```
Authorization: Bearer <your_token>
```

---

## Sample Endpoints

### `GET /products`
Retrieve a list of products.

**Response:**
```json
[
  {
    "id": 1,
    "name": "Wireless Mouse",
    "price": 19.99
  }
]
```

### `POST /orders`
Create a new order.

**Request:**
```json
{
  "productId": 1,
  "quantity": 2
}
```

**Response:**
```json
{
  "orderId": 101,
  "status": "confirmed"
}
```
