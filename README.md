# PC16 - Week 9: Object-Oriented Programming in Dart (Part 1)

**Course Outcome:** CO3 - write structured Dart programs using variables, control structures, functions, and object-oriented principles.

---

## Overview

This repository contains an individual Dart console program that models a **Phone** object using Object-Oriented Programming (OOP) concepts. It demonstrates class definitions, constructors, encapsulation with private fields, getters, setters, and collections using a `List`.

---

## Key OOP Concepts Applied

### 1. Class Definition
The `Phone` class models a smartphone object with fields for properties and methods for behaviors.

### 2. Constructor
A parameterized constructor sets initial values when creating a new `Phone` instance.

### 3. Encapsulation
Private fields (`_price`, `_batteryLevel`) are defined using an underscore `_` prefix. Safe access and updates are managed via explicit getters and setters with input validation.

### 4. Collections
A `List<Phone>` stores and manages multiple instances of the class, allowing iteration and status reporting.

---

## Class Structure

### Properties / Fields
* `brand` (`String`): The manufacturer of the phone.
* `model` (`String`): The specific model name.
* `storageGB` (`int`): Storage capacity in gigabytes.
* `_price` (`double`, private): Retail price in PHP.
* `_batteryLevel` (`int`, private): Battery percentage (0 to 100%).

### Methods / Behaviors
* `usePhone(int minutes)`: Simulates usage and drains battery based on duration.
* `chargePhone(int amount)`: Increases battery level up to a maximum of 100%.
* `displayInfo()`: Prints a structured status report of the phone.

---

## How to Run

1. Open **DartPad** or your local Dart environment.
2. Copy the contents of `main.dart` into the editor.
3. Click **Run** to execute the program.
