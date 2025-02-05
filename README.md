# **LoginAPI - Authentication & Authorization System**

LoginAPI is a Node.js-based authentication system that provides secure user registration, login, and logout functionalities using **JWT (JSON Web Tokens)** for authentication and **bcrypt.js** for password hashing. This API ensures user data protection while enabling smooth authentication processes.

---

## **🚀 Features**
- ✅ **User Registration** - Securely stores user credentials in the database with password hashing.
- ✅ **User Login** - Authenticates users using email and password, issuing a JWT for session management.
- ✅ **User Logout** - Clears authentication cookies to securely log out users.
- ✅ **JWT-based Authentication** - Issues and verifies access tokens for protected routes.
- ✅ **Password Hashing** - Uses bcrypt.js to store passwords securely.

---

## **📌 API Endpoints**

### **1️⃣ Register User**
- **Endpoint:** `POST /api/register`
- **Description:** Creates a new user with a hashed password.
- **Request Body (JSON):**
  ```json
  {
    "name": "John Doe",
    "email": "john.doe@example.com",
    "password": "securepassword"
  }
  ```
- **Response:**
  ```json
  {
    "message": "User registered successfully",
    "token": "jwt_token_here",
    "user": {
      "id": "user_id",
      "name": "John Doe",
      "email": "john.doe@example.com"
    }
  }
  ```

---

### **2️⃣ Login User**
- **Endpoint:** `POST /api/login`
- **Description:** Authenticates the user and returns a JWT.
- **Request Body (JSON):**
  ```json
  {
    "email": "john.doe@example.com",
    "password": "securepassword"
  }
  ```
- **Response:**
  ```json
  {
    "message": "Login successful",
    "token": "jwt_token_here",
    "user": {
      "id": "user_id",
      "name": "John Doe",
      "email": "john.doe@example.com"
    }
  }
  ```

---

### **3️⃣ Logout User**
- **Endpoint:** `POST /api/logout`
- **Description:** Logs out the user by clearing the authentication cookie.
- **Frontend Example:**
  ```js
  fetch("/api/logout", { 
      method: "POST",
      credentials: "include" // Ensures cookies are sent
  })
  .then(response => response.json())
  .then(data => console.log(data.message))
  .catch(error => console.error("Logout failed:", error));
  ```
- **Response:**
  ```json
  {
    "message": "Logout successful"
  }
  ```

---

## **⚡ Technologies Used**
- **Node.js** - Backend runtime environment.
- **Express.js** - Lightweight web framework for handling routes.
- **MongoDB & Mongoose** - Database for storing user credentials.
- **JWT (jsonwebtoken)** - Secure token-based authentication.
- **bcrypt.js** - Password hashing for security.
- **dotenv** - Loads environment variables.

---

## **📌 Setup Instructions**

1. **Clone the repository:**
   ```bash
   git clone https://github.com/devKafkaesque/loginAPI.git
   cd loginAPI
   ```
2. **Install dependencies:**
   ```bash
   npm install
   ```
3. **Set up the `.env` file:**
   ```plaintext
   MONGO_URI=your_mongo_connection_string
   JWT_SECRET=your_secret_key
   NODE_ENV=development
   ```
4. **Start the server:**
   ```bash
   npm start
   ```
5. **Use Postman or a frontend client to test the endpoints.**

---

## **🔒 Security Considerations**
- **Use HTTPS** to secure requests in production.
- **Store JWTs securely** (preferably in HTTP-only cookies).
- **Implement refresh tokens** for better session management.
- **Use helmet and CORS** to protect against common web vulnerabilities.

---

## **🚀 Next Steps**
- 🔹 Implement refresh tokens for better session management.
- 🔹 Add role-based access control (RBAC).
- 🔹 Secure routes using JWT middleware.
- 🔹 Improve error handling and validation.

---

## **👨‍💻 Contributing**
Contributions are welcome! Feel free to fork the repository and submit a pull request.

---

## **📜 License**
This project is licensed under the MIT License.
