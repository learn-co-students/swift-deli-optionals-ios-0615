# Swift — Deli Optionals

## Objectives

1. Write functions that take optional arguments.
2. Write functions that provide optional returns.
3. Use `if let` to unwrap an optional within a function's implementation.
4. Distinguish between a `nil` array optional and an empty array instance.

## Instructions

Open the `swift-deli-optionals.xcworkspace` and navigate to the `Sandbox.swift` file. You will need to declare all three functions in order to get the tests to build (`⌘` `U`). If you wish to solve each function one at a time, call your functions from the AppDelegate with your own test data and run the scheme with `⌘` `R`.

1. Declare a function named `stringForDeliLine(_:)` that takes one argument, an **optional array** of strings, and returns a **optional string**. Write its implementation so that it provides a readout of the names in the argument array. 
  * For an array containing the names "Al", "Chris", and "Zach" it should return a string that prints:

        ```
        The line is:
        1. Al
        2. Chris
        3. Zach
        ```  
   **Hint:** *Use an* `if let` *statement to unwrap the array optional. Define the behavior for the* `nil` *case within the associated* `else` *statement.*
   * For an empty array, the function should print a string saying that the line is empty and return `nil`,
   * For a `nil` array optional, the function should print a string saying that the line is empty and return `nil`.

2. Declare a function named `addName(_:toDeliLine:)` that takes two arguments, a string `name` and an **optional array** of strings `deliLine`, and returns an array of strings. This method should add the `name` string to the `deliLine` array, print a welcome message for the new customer telling them their place in line (starting from one, not zero), and returns the altered `deliLine` array. The function should return an array containing the string argument if the array argument is `nil`.

3. Declare a function named `serveNextCustomerInDeliLine(_:)` which takes one argument, an **optional array** of strings, and returns an **optional array** of strings. The function should remove the first name from the array (there is a `removeFirst()` array method, but it cannot be called on an empty array), print a message for this "next customer" telling them it is their turn, and returning the array with the customer's name removed.
  * If the array argument is `nil` *or* empty, this function should print a string saying that the line is empty and return `nil`.

<a href='https://learn.co/lessons/swift-deli-optionals' data-visibility='hidden'>View this lesson on Learn.co</a>

