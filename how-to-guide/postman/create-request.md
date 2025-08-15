
# How to Create a Request in Postman

This guide walks you through creating, testing, and saving an API request in Postman.

---

## **1. Launch Postman**
1. Open the **Postman** application.
2. Sign in or continue without an account (signing in allows cloud sync).

---

## **2. Create a New Request**
1. Click **+ New Tab** or **New → HTTP Request**.
2. In the new tab, select the **HTTP method** (e.g., GET, POST, PUT, DELETE) from the dropdown next to the URL bar.
3. Enter the **request URL** (e.g., `https://jsonplaceholder.typicode.com/posts`).

---

## **3. Add Request Parameters or Body**
- **For GET requests**:
  - Add **Query Params** by clicking the **Params** tab and entering key-value pairs.
- **For POST/PUT requests**:
  - Go to the **Body** tab.
  - Select **raw** and choose `JSON` from the dropdown.
  - Enter your JSON payload:
    ```json
    {
      "title": "foo",
      "body": "bar",
      "userId": 1
    }
    ```

---

## **4. Add Headers (Optional)**
- Go to the **Headers** tab.
- Add key-value pairs (e.g., `Content-Type` → `application/json`).

---

## **5. Send the Request**
- Click the **Send** button.
- Review the **Response** section to see:
  - **Status Code** (e.g., `200 OK`)
  - **Response Body**
  - **Response Time**

---

## **6. Save the Request**
1. Click **Save**.
2. Choose or create a **Collection** (e.g., "My API Tests").
3. Give the request a **Name** and optional **Description**.
4. Click **Save to Collection**.

---

## **7. Add Tests (Optional)**
1. Go to the **Tests** tab.
2. Add JavaScript snippets to validate the response:
    ```javascript
    pm.test("Status code is 200", function () {
      pm.response.to.have.status(200);
    });
    pm.test("Response has title", function () {
      pm.expect(pm.response.json()).to.have.property('title');
    });
    ```
3. Click **Send** again to run tests.

---

✅ **You have successfully created and saved a request in Postman!**

