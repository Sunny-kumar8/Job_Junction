# Job Junction

Job Junction is a comprehensive Job Portal web application developed in core PHP and MySQL. It serves as a bridge between job seekers and employers, providing a platform to list, search, and apply for jobs across various sectors.

## Features

**For Job Seekers:**
* **Job Search:** Find jobs by category, company, job title, or function.
* **Advanced Search:** Filter job listings based on specific criteria.
* **User Accounts:** Register and manage personal profiles.
* **Applications:** Apply directly to jobs and upload a resume/CV.
* **Application Tracking:** View status and feedback on submitted applications.

**For Administrators & Staff:**
* **Job Management:** Post, edit, and categorize job vacancies.
* **Company Management:** Add and update company profiles and hiring details.
* **Applicant Tracking:** Review incoming applications, download resumes, and provide feedback.
* **User Management:** Secure access control with Administrator and Staff roles.

## Technologies Used
* **Frontend:** HTML, CSS, JavaScript, Bootstrap
* **Backend:** Core PHP
* **Database:** MySQL

## Installation & Setup

1. **Prerequisites:** You need a local server environment with PHP and MySQL (e.g., XAMPP, WAMP, or MAMP).
2. **Clone the Repository:**
   ```bash
   git clone https://github.com/Sunny-kumar8/Job_Junction.git
   ```
3. **Database Configuration:**
   * Open your MySQL management tool (e.g., phpMyAdmin).
   * Create a new database named `jobdb`.
   * Import the `jobdb.sql` file provided in the root directory into the `jobdb` database.
4. **Server Setup:**
   * Move the project folder into your server's document root (e.g., `htdocs` for XAMPP).
   * Start Apache and MySQL modules.
5. **Run the Application:**
   * Access the application in your browser at: `http://localhost/Job_Junction`
   * (If running via PHP's built-in server, run `php -S localhost:8000` from the parent directory and navigate to `http://localhost:8000/Job_Junction`).

## Default Administrator Credentials
* **Username:** admin
* **Password:** admin
*(Ensure you update the password hashes in `tblusers` for production use)*
