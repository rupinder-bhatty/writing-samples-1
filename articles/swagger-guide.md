This guide introduces Swagger — an open source toolkit that simplifies API design, documentation, and testing. If you're building or consuming REST APIs, Swagger tools can help make the process faster and more efficient.

### What is an API?

APIs are a mechanism by which software components can interact with each other. To communicate effectively, the software components adhere to well-defined protocols and a set of standardised definitions. For example, the weather bureau’s software system has APIs that provide weather details; the weather app on your phone uses these API’s and displays the weather data. For more details on APIs, please read the APIForBeginners guide.

### What is Swagger?

Swagger is an open source framework used to design, build and document RESTful APIs. The Swagger suite of tools allows developers to create and document machine and human-readable API documentation. Any API that adheres to the Swagger spec is easy to read, easy to iterate and easy to consume. 

API specifications typically include information such as supported operations, parameters, outputs, authorisation requirements, available endpoints, and licenses needed. Swagger can automatically generate this information from the source code by requesting the API to return a documentation file based on its annotations.

Swagger helps users build, document, test, and consume RESTful web services. It supports both top-down and bottom-up API development approaches. In the top-down (or design-first) method, Swagger helps design an API before writing any code. In the bottom-up (or code-first) method, Swagger generates documentation from existing API code.

### What is OpenAPI?

OpenAPI is a specification or a standard for describing and documenting RESTful APIs. It provides a standardised, machine-readable format for describing the structure and functionality of an API, enabling developers to easily understand, use, and integrate with it. 

### Swagger toolkit

**Swagger editor -** Swagger Editor is a browser-based editor where you can write and edit API documentation and OpenAPI specifications. You can use the Swagger Editor through the browser, download to run locally, or use a host version such as SwaggerHub. It is a convenient tool that helps you write documentation in YAML or JSON and have it automatically compared against the Swagger spec. Any mistakes are flagged, and alternatives are suggested. This way, when you publish your documentation, you can be sure that it’s error-free.

**Swagger UI -** Now that we have our documentation created with our editor, we need a way to share it with our users. Swagger UI displays OpenAPI specifications as interactive API documentation. It takes the YAML file and converts it into a user-facing documentation that lets your users try out the API calls directly in the browser.

**Swagger codegen -** So far, we've created interactive API documentation with Swagger Editor and Swagger UI, it is now time to implement the server logic so that our API can go live. Swagger Codegen generates server stubs, client SDKs, and client libraries from an OpenAPI specification.

### Next steps

You can try Swagger tools at https://swagger.io/tools. For hands-on experience, start by creating a simple API spec in Swagger Editor, view it in Swagger UI, and experiment with Codegen.
