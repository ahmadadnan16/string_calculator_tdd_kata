## String Calculator TDD Kata   
### Description    

String Calculator is a simple Ruby on Rails application that implements a basic string calculator following the Test-Driven Development (TDD) approach. The calculator provides a method add that takes a string of comma-separated numbers as input and returns the sum of those numbers.

### Features
- Handles empty strings, single numbers, and multiple numbers separated by commas.
- Allows newline characters between numbers instead of commas.
- Supports different delimiters specified at the beginning of the string.
- Throws an exception for negative numbers and displays all negative numbers in the exception message.   
### Usage    
To use the String Calculator, follow these steps:

#### Clone the repository    

`git clone https://github.com/ahmadadnan16/string_calculator_tdd_kata.git`   

`cd string_calculator_tdd_kata`

#### Install dependencies:
#### Ruby version   
`ruby "3.0.0"`  

`bundle install`  

#### Setup database

`rails db:create`  
`rails db:migrate`

#### Start the Rails server:

`rails server`

Run the test suite to ensure everything is set up correctly:   

`bundle exec rspec`  


You can now access the String Calculator application through your web browser at http://localhost:3000.   


### Happy coding!!
