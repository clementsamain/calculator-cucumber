Feature: Integer Arithmetic Expressions
  This feature provides a range of scenarios corresponding to the
  intended external behaviour of arithmetic expressions on integers.

  Background:
    Given I initialise a calculator

  Scenario Outline: Printing the operation of integers
    Given an integer operation <operation>
    When I provide a first number <n1>
    And I provide a second number <n2>
    Then its <not> notation is <res>
    And its <not> notation is <res>
    And its <not> notation is <res>

    Examples:
      |n1|n2|operation|not|res|
      |8 |6|'*'|PREFIX| * (8, 6)|
      |8 |6|'+'|PREFIX| + (8, 6)|
      |8 |6|'/'|PREFIX| / (8, 6)|
      |8 |6|'-'|PREFIX| - (8, 6)|
      |8 |6|'*'|INFIX| ( 8 * 6 )|
      |8 |6|'+'|INFIX| ( 8 + 6 )|
      |8 |6|'/'|INFIX| ( 8 / 6 )|
      |8 |6|'-'|INFIX| ( 8 - 6 )|
      |8 |6|'*'|POSTFIX| (8, 6) *|
      |8 |6|'+'|POSTFIX| (8, 6) +|
      |8 |6|'/'|POSTFIX| (8, 6) /|
      |8 |6|'-'|POSTFIX| (8, 6) -|