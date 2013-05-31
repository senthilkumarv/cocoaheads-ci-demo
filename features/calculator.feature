Feature: Calculator
  As a dumb user
  I want to add two numbers
  So I can get correct result

Scenario: Add with two numbers
  Given I am on the calculator screen
  When I enter "10" into input field number 1
  And I enter "30" into input field number 2
  And I touch the "Add" button
  Then I should see "40"

Scenario: Add with two string
  Given I am on the calculator screen
  When I enter "foo" into input field number 1
  And I enter "bar" into input field number 2
  And I touch the "Add" button
  Then I should see "Invalid Input"

