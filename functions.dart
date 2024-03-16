// Program 2: Perform Mathematical Operations with Functions
// Write a Dart program that performs two mathematical operations using functions.
import 'dart:io';

int add(List<int> numbers) {
  // Defining a function named 'add' that takes a list of integers as input
  int sum = 0; // Initializing a variable 'sum' to store the sum of numbers
  for (int num in numbers) {
    // Iterating over each number in the list
    sum += num; // Adding the current number to the sum
  }
  return sum; // Returning the final sum
}

int mul(List<int> numbers) {
  // Defining a function named 'mul' that takes a list of integers as input
  int product =
      1; // Initializing a variable 'product' to store the product of numbers
  for (int num in numbers) {
    // Iterating over each number in the list
    product *= num; // Multiplying the current number with the product
  }
  return product; // Returning the final product
}

void main() {
  // Defining the main function
  print(
      "Select operation:"); // Printing a message to prompt the user to select an operation
  print("1. Addition");
  print("2. Multiplication");

  var operation = int.parse(
      stdin.readLineSync()!); // Reading user input for operation selection
  if (operation != 1 && operation != 2) {
    // Checking if the operation is neither addition nor multiplication
    print(
        "Invalid operation selection"); // Printing an error message for invalid operation
    return; // Exiting the program
  }
  List<int> numbers =
      []; // Initializing an empty list to store numbers for calculation
  print("Enter numbers for calculation. Enter 'done' when finished:");
  while (true) {
    // Looping indefinitely until break
    var input = stdin.readLineSync()!; // Reading user input
    if (input.toLowerCase() == 'done') {
      // Checking if the user input is 'done'
      break; // Exiting the loop if 'done' is entered
    }
    numbers.add(int.parse(
        input)); // Adding the parsed integer input to the list of numbers
  }
  switch (operation) {
    // Switching based on the selected operation
    case 1: // If the operation is addition
      print(
          "Result of addition: ${add(numbers)}"); // Printing the result of addition
      break; // Exiting the switch statement
    case 2: // If the operation is multiplication
      print(
          "Result of multiplication: ${mul(numbers)}"); // Printing the result of multiplication
      break; // Exiting the switch statement
    default: // If the operation is neither addition nor multiplication
      print(
          "Invalid operation"); // Printing an error message for invalid operation
  }
}
