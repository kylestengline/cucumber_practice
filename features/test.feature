Feature: This is the feature title
  This is the description of the feature, which can span multiple lines.
 You can even include empty lines, like this one:

# In fact, everything until the next Gherkin keyword is included in the description.

 @credit
   Scenario: Succesful withdrawal from an account in credit
   
    #So, we start with a context, go on to describe an action, and then finally check that the outcome was what we expected. Each scenario tells a little story describing something that the system should be able to do.
    
    # the context
     Given I have $100 in my account 
     But my card is invalid
    
    # the event(s)
     When I request $20 
    
    # the outcome(s)
     Then $20 should be dispensed 
     And I should be told to contact the bank
    
    #So, we use Given to set up the context where the scenario happens, When to interact with the system somehow, and Then to check that the outcome of that interaction was what we expected.
