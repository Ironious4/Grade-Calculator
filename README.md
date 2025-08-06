## 📘 Grade Calculator
A CLI-based program written in Ruby that calculates and returns student grades based on their marks. It also includes input validation to handle out-of-range numbers and non-numerical inputs.

## 📖 Description
This project provides a simple command-line interface that:

Calculates grades based on student marks.

Handles out-of-range numeric inputs by displaying error messages.

Returns a default grade F for non-numeric inputs.

It also includes RSpec tests to ensure the program behaves correctly under various scenarios.

## 🛠️ Technologies Used
Ruby (main programming language)

RSpec (testing framework)

Gems (Ruby package manager)

## 📦 Installation Instructions

1. Clone the Repository
git clone https://github.com/Ironious4/Grade-Calculator.git
cd grade-calculator

2. Install Ruby and Gem
Check if Ruby is installed:
ruby -v

Install Ruby (if missing):
Windows RubyInstaller

macOS:
brew install ruby

Linux:
sudo apt install ruby-full

Verify gem is installed:
gem -v

3. Install RSpec
gem install rspec


## 🚀 Usage Examples
Run the Program
ruby grades.rb

## Example interaction:
Enter student marks (0-100) or type 'exit' to quit: 95
Grade: A
Enter student marks (0-100) or type 'exit' to quit: hello
Grade: F
Enter student marks (0-100) or type 'exit' to quit: 120
Invalid input! Please enter a number between 0 and 100.
Enter student marks (0-100) or type 'exit' to quit: exit


## Run Tests
rspec grades_spec.rb

or run all tests:
rspec


## ✨ Features Overview
✅ Calculates grades (A, B, C, D, F) based on numerical marks.

🚫 Throws errors for inputs outside the valid range (0–100).

🅵 Returns grade F when non-numeric inputs are entered.

🧪 Comprehensive automated tests using RSpec.

## ⚙️ Configuration Options
Grading thresholds: Modify grade boundaries inside grades.rb.

Exit keyword: Currently set to "exit" (case-insensitive).

## 🛠️ Troubleshooting
Problem: undefined method 'chomp' for nil
Cause: Running rspec grades.rb instead of the test file.

Solution: Use:
rspec grades_spec.rb

Problem: command not found: rspec
Cause: RSpec gem not installed.

Solution: Install it:
gem install rspec

Problem: Ruby not recognized
Cause: Ruby not installed or not added to PATH.

Solution: Reinstall Ruby and ensure “Add Ruby to PATH” is checked (Windows) or add manually.

## 🤝 Contributing Guidelines
We welcome contributions! To contribute:

Fork the repository.

Create a new branch for your feature:
git checkout -b feature-name

Commit your changes and push:
git commit -m "Added new feature"
git push origin feature-name
Submit a Pull Request with a detailed explanation.

## 📜 License
This project is licensed under the MIT License.
You are free to use, modify, and distribute this software with proper attribution.


## 📂 Code Structure Overview
Ruby/

│── Gemfile         # Ruby dependencies(RSpec)     

│── Gemfile.lock     # Locked dependencies for reproducibility

│── grades_spec.rb    # RSpec test suite  

│── grades.rb         # Main CLI program with grade calculation

│── README.md          # Project documentation