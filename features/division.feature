Feature: Division

@division
Scenario Outline: Dividing two numbers
  Given the input "<input>"
  When the calculator is run
  Then the output should be "<output>"

  Examples: 
  | input | output |
  |  2/2  |   1    | 
  |  99/3 |   33   |
