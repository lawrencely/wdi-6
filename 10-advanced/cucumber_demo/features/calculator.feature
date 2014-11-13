Feature: Calculator
  As a budding developer
  I want to experiment with Cucumber
  And add some numbers together
  Scenario: Add two numbers together
    Given I have a calculator
    And I have the number 5
    And I have the number 7
    When i add them together
    Then I should see 12 on the terminal

  Scenario: Subtract two numbers together
    Given I have a calculator
    And I have the number 7
    And I have the number 2
    When I subtract them together
    Then I should see 5 on the terminal

  Scenario: Multiply two numbers
    Given I have a calculator
    And I have the number 5
    And I have the number 5
    When I Multiply them
    Then I should see 25 on the terminal