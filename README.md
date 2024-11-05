# Dynamic Student Web Portal

## Overview

The **Dynamic Student Web Portal** is a web-based application developed using Java Servlets and JSP, designed to provide a user-friendly interface for students and administrators. The portal enables students to view their academic details, results, and attendance in real-time, while administrators can securely manage and update student records. The application is built using Java Servlets, JSP, and MySQL, and runs on the Tomcat 10 server within the Eclipse Java IDE.

## Features

- **Student Interface:**
  - View academic details, results, and attendance records.
  - Access the portal from any device with an internet connection.
  
- **Admin Interface:**
  - Secure login for administrators.
  - Manage student records by adding, modifying, and deleting data.
  - Real-time updates to the student database.
  
- **Dynamic and Scalable Architecture:**
  - Server-side processing using Java Servlets.
  - Dynamic content generation using JSP.
  - Efficient data handling with MySQL database integration.

## Technologies Used

- **Languages:** Java, HTML, CSS
- **Web Framework:** Java Servlets, JSP
- **Database:** MySQL
- **Server:** Apache Tomcat 10
- **IDE:** Eclipse Java IDE

## Getting Started

### Prerequisites

Ensure you have the following software installed:

- [JDK 11 or higher](https://www.oracle.com/java/technologies/javase-downloads.html)
- [Apache Tomcat 10](https://tomcat.apache.org/download-10.cgi)
- [MySQL](https://dev.mysql.com/downloads/installer/)
- [Eclipse IDE for Java EE Developers](https://www.eclipse.org/downloads/)

### Installation

1. **Clone the Repository:**

   Clone this repository to your local machine:

   ```bash
   git clone https://github.com/iAdityaD/Dynamic_Student_Portal_Using_JSP.git
   cd Dynamic_Student_Portal_Using_JSP
   ```

2. **Import the Project into Eclipse:**

   - Open Eclipse IDE.
   - Go to `File` > `Import...` > `Maven` > `Existing Maven Projects`.
   - Select the project folder and click `Finish`.

3. **Configure MySQL Database:**

   - Create a MySQL database named `student_portal`.
   - Run the SQL script provided in the `/database` folder to set up the required tables and data.

4. **Configure Tomcat Server:**

   - In Eclipse, go to `Window` > `Preferences` > `Server` > `Runtime Environments`.
   - Click `Add` and select `Apache Tomcat v10.0`.
   - Point to the Tomcat installation directory and click `Finish`.

5. **Update Database Configuration:**

   - Open the `dbConfig.java` file in the `src` directory.
   - Update the database URL, username, and password with your MySQL credentials.

6. **Run the Application:**

   - Right-click on the project in the Project Explorer.
   - Select `Run As` > `Run on Server`.
   - Choose `Tomcat v10.0 Server` and click `Finish`.

### Usage

- **Student Login:**
  - Navigate to `http://localhost:8080/student-portal/login.jsp`.
  - Enter student credentials to view details.

- **Admin Login:**
  - Navigate to `http://localhost:8080/student-portal/admin.jsp`.
  - Enter admin credentials to manage student records.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue to improve the application.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Contact

For any questions or issues, please contact [adityadarapureddy@example.com].
 
