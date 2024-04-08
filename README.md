# stdaux-assignment 
# (Workaround for Question 1)
# Trans Table SQL Queries

## Description
This project contains SQL queries for working with a "trans" table, which stores transaction data including CustomerID, Transaction Date (TransDate), Transaction Type (TransType), and Amount.

## Purpose
The purpose of this project is to demonstrate how to perform various operations on the "trans" table using SQL queries, such as selecting, inserting, and manipulating data.

## How to Use
1. **Installation**: Ensure you have MySQL installed on your system. You can download MySQL Community Server from [here](https://dev.mysql.com/downloads/mysql/).

2. **Setting up the Database**: 
   - Open MySQL Workbench and connect to your MySQL Server.
   - Create a new database or use an existing one where you want to work with the "trans" table.
   - Execute the provided SQL code to create the "trans" table within your chosen database.

3. **Executing SQL Queries**:
   - Open MySQL Workbench and connect to your MySQL Server.
   - Open a new SQL tab and paste the desired SQL query from this project.
   - Run the SQL query to perform the specified operation on the "trans" table.

## Dependencies
- MySQL Server: Ensure you have MySQL Server installed on your system.
- MySQL Workbench: Used for executing SQL queries and managing MySQL databases.

## Additional Information
- The provided SQL queries are compatible with MySQL databases.
- Ensure that the date format in the provided SQL queries matches the datetime format in your MySQL database.
- For queries involving date comparisons, ensure that your MySQL database's timezone settings are configured correctly.

########################################################################################################################

******  Workaround for Question 2   *******

# Passing Array by Value in C

## Description
This project demonstrates how to pass an array using call by value in C. By default, arrays in C are passed to functions by reference, meaning that the function receives a pointer to the array's first element. However, this project shows how to create a copy of the array and pass that copy to the function to achieve call by value.

## Purpose
The purpose of this project is to illustrate the concept of call by value in C and how it can be applied to arrays. It also provides an example of creating a copy of an array and passing it to a function.

## How to Compile/Run the Code
1. **Dependencies**: This code requires a C compiler to compile and run. If you don't have one installed, you can use GCC (GNU Compiler Collection) which is available for most operating systems.
   
2. **Compiling the Code**:
   - Open a terminal or command prompt.
   - Navigate to the directory where the C source file (`callByValue.c`) is located.
   - Run the following command to compile the code using GCC:
     ```
     gcc -o callByValue callByValue.c
     ```
   This command will generate an executable file named `callByValue` in the same directory.

3. **Running the Code**:
   - After compiling the code successfully, run the executable by executing the following command:
     ```
     ./callByValue
     ```

## Additional Information
- The `printArray` function is used to print the elements of the array passed to it.
- Inside `main()`, an array `originalArray` is declared with some elements.
- The size of the array is calculated using the `sizeof` operator to determine the number of elements.
- A copy of the array `originalArray` is created called `copiedArray`, and each element from `originalArray` is copied to `copiedArray`.
- The `printArray` function is called with the `copiedArray` and its size.
- By passing a copy of the array to the function, any modifications made to the array inside the function will not affect the original array declared in `main()`.

- 




