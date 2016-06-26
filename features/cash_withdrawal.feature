Feature: Cash withdrawal
  @cash
  Scenario: Successful withdrawal from an account in credit
    Given I have "$100" in my account
    When I request "$20"
    Then "$20" should be dispensed
