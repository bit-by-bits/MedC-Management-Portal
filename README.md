# MedC Management Portal

MedC Management Portal is a Java application designed to manage student registrations, appointments with doctors, notice board updates, and virtual purchases of medicines. The application is built using Java, MySQL, and Swing.

## Features

### User Mode (for Students)

- **Registration**: Students can register by providing their name, BITS ID No., BITS email address (no other email should be valid), and mobile number.

- **Notice Board**: Students can view the latest updated timings and holidays on the notice board.

- **Doctor Appointment**: Students can book an appointment with the doctor.

- **Medicine Purchase**: Students can virtually purchase medicines at the medical store and choose to pay immediately or add the cost to their fees for later payment.

### Admin Mode

- **Student Management**: Admins can manage the records of all students and view the appointments for the current day.

- **Notice Board Update**: Admins can update the notice board, and the updates will be published to all students.

- **Medical Store Summary**: Medical store owners can view a summary of purchases, including revenue generated and the due amount.

## Design Pattern

The code utilizes the Command Design Pattern, which encapsulates a request as an object. This pattern allows different requests to be referenced through a common interface.

## Object-Oriented Principles

The code adheres to the following Object-Oriented Programming (OOP) principles:

- **Encapsulation**: The code uses access modifiers to restrict the access of certain methods and variables to specific classes, ensuring encapsulation.

- **Abstraction**: Abstraction is used as a base for creating other classes, promoting code reusability and maintainability.

## Dependencies

- Java Development Kit (JDK)
- MySQL database
- Swing GUI library

## Database Initialization

To initialize the database for the MedC Management Portal, follow these steps:

1. Create a new MySQL database.

2. Import the initial database schema using the `hms_db.sql` file provided in the `database` folder.

   Example using the MySQL command-line tool:

   ```bash
   mysql -u <username> -p <database_name> hms_db.sql
   ```

   Replace `<username>` with your MySQL username, `<database_name>` with the name of the database you created.

## How to Run

1. Clone the repository:

   ```
   git clone https://github.com/bit-by-bits/MedC-Management-Portal.git
   ```

2. Set up the MySQL database by following the steps mentioned in the "Database Initialization" section.

3. Open the project in an Integrated Development Environment (IDE) such as Eclipse or IntelliJ.

4. Build and compile the project, then run it.

## Contributing

Contributions are welcome! If you find any bugs or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
