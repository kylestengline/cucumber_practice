Feature: Making a robot laugh and not laugh

@robot
@robot_happy  
Scenario: Tickle a happy robot
  Given I am in a "good" mood
  When you tickle me 
  Then I will giggle

@robot
@robot_mad
  Scenario: Attack a happy robot
  Given I am in a "bad" mood
  When you kick me in the shins
  Then I will kick back
