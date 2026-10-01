# Fuel-Indeed

## Fuel Delivery Management System

Fuel-Indeed is a Java-based web application designed to simplify fuel ordering and delivery management through an online platform. The system provides functionality for users, petrol-pump operators, employees, and administrators.

The project uses a JSP/Servlet-based architecture with MySQL for data management and Razorpay integration for online payment processing.

---

## Features

### User Module

- User registration and login
- User account management
- Location-based information
- Fuel booking
- Fuel quantity selection
- Online payment integration
- Order and delivery information

### Petrol Pump Module

- Petrol pump registration
- Petrol pump management
- Fuel availability information
- Customer booking management
- Employee management

### Employee Module

- Employee authentication
- Employee assignment to petrol pumps
- Assigned booking management
- Delivery status management

### Admin Module

- Administrative authentication
- Petrol pump registration management
- System-level management of registered entities

---

## Technology Stack

### Frontend

- HTML
- CSS
- JavaScript
- Bootstrap
- jQuery
- JSP

### Backend

- Java
- Java Servlets
- JSP

### Database

- MySQL

### Server

- Apache Tomcat

### Payment

- Razorpay

---

## System Architecture

```text
                    ┌──────────────────────┐
                    │        User          │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │    JSP / Frontend    │
                    │ HTML / CSS / JS      │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │   Java Servlets      │
                    │   Application Logic  │
                    └──────────┬───────────┘
                               │
                    ┌──────────┴───────────┐
                    ▼                      ▼
           ┌─────────────────┐    ┌─────────────────┐
           │    MySQL        │    │    Razorpay     │
           │    Database     │    │    Payment      │
           └─────────────────┘    └─────────────────┘
```

---

## Main Modules

```text
Fuel-Indeed
│
├── User Management
│   ├── Registration
│   ├── Login
│   └── Booking
│
├── Petrol Pump Management
│   ├── Registration
│   ├── Fuel Availability
│   └── Booking Management
│
├── Employee Management
│   ├── Employee Registration
│   ├── Assignment
│   └── Delivery Management
│
├── Booking Management
│   ├── Fuel Quantity
│   ├── Location
│   ├── Payment
│   └── Delivery Status
│
└── Administration
    └── System Management
```

---

## Database

The application is designed to use a MySQL database named:

```text
fuelDB
```

The source code references entities including:

- `users`
- `admin`
- `PetrolPump`
- `NewRegPetrolPump`
- `emp`
- `Booking`

The database schema is not included in the original project repository.

---

## Project Structure

The project follows a Java web application structure containing:

```text
Fuel-Indeed/
│
├── Java source files
├── JSP pages
├── HTML/CSS/JavaScript resources
├── Bootstrap and jQuery resources
├── Java dependencies
└── Web application configuration
```

---

## Requirements

To run the project locally, the following software is required:

- Java JDK
- Apache Tomcat
- MySQL Server
- MySQL Workbench (optional)
- A Java-compatible IDE such as Eclipse or IntelliJ IDEA

---

## Running the Project

### 1. Clone the repository

```bash
git clone https://github.com/Parth4465/Fuel-Indeed.git
```

### 2. Open the project

Import the project into a Java IDE that supports Java web applications.

### 3. Configure MySQL

Create the database expected by the application:

```sql
CREATE DATABASE fuelDB;
```

Configure the database connection according to the application's database connection class.

### 4. Configure Apache Tomcat

Add the project to an Apache Tomcat server and deploy the application.

### 5. Start the application

Start MySQL and Tomcat, then open the application through the local Tomcat server.

---

## Payment Integration

Fuel-Indeed contains integration with Razorpay for online payment processing.

For a production deployment, payment credentials should be stored securely using environment variables or another secure configuration mechanism.

**Never commit private API keys or secret credentials to GitHub.**

---

## Project Context

Fuel-Indeed is an academic/team project focused on applying Java web development, database management, user authentication, online booking, payment integration, and delivery management concepts.

### Contributions

This repository may contain work developed collaboratively. Individual contributions should be documented according to the work actually performed by each contributor.

---

## Future Improvements

Potential improvements include:

- Mobile application support
- Real-time delivery tracking
- Improved notification system
- Advanced fuel inventory management
- Improved authentication and authorization
- Secure external configuration management
- Enhanced administrative analytics
- Responsive UI improvements

---

## Disclaimer

This project is intended for educational and demonstration purposes. Production deployment would require additional security, validation, authentication, payment-security, data-protection, and operational controls.

---

## Author

**Parth Khond**

Computer Engineering Student  
Cybersecurity | Full-Stack Development | Java | Python | AI

GitHub: [Parth4465](https://github.com/Parth4465)

LinkedIn: [Parth Khond](https://www.linkedin.com/in/parth-khond-7220b7385/)