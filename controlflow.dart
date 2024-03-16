// Program 3: Determine Grade Based on Marks
// Write a Dart program to determine the grade based on a student's marks. The program should print out the appropriate grade according to the following criteria:
// - If the marks are greater than 85, print "Excellent".
// - If the marks are between 75 and 85 (inclusive), print "Very Good".
// - If the marks are between 65 and 75 (inclusive), print "Good".
// - If the marks are below 65, print "Average".

import 'dart:io';

void main() {
  // Prompt the user to enter their marks attained
  print("Enter your marks attained:");
  // Read the user input from the console, try to parse it as an integer, and store it in the variable 'marks'
  int? marks = int.tryParse(stdin.readLineSync()!);
  // Checks if the input provided by the user was successfully parsed into an integer.
  if (marks != null) {
    if (marks > 85) {
      print("Excellent");
    } else if (marks > 75 && marks <= 85) {
      print("Very Good");
    } else if (marks >= 65 && marks <= 75) {
      print("Good");
    } else {
      print("Average");
    }
  } else {
    // If 'marks' is null or the input provided by the user cannot be parsed as an integer, execute the following
    print("Invalid input. Please enter a valid integer.");
  }
}
