Feature: Generate Case ID
  
    As a case worker,
    So that I can refer to unique cases,
    I want to automatically generate case IDs by Year, Month Day, and daily client number
 
Scenario: Generate Case ID upon Case Creation
      Given I am on the items index page
      Then  I should not see "20121201000"

      Given I am on the new item page
      When  I fill in "Client SSN" with "101010101"
      When  I fill in "Client Name" with "Billy Bob Joe Jr"
      And   I select "2012/December/1" as the date for "date_opened"
      And   I press "Create Case"
      And   I should see "20121201000"
      
      Given I am on the new item page
      When  I fill in "Client SSN" with "202020202"
      When  I fill in "Client Name" with "Jilly Job Boe Jr"
      And   I select "2012/December/1" as the date for "date_opened"
      And   I press "Create Case"
      And   I should see "20131201000" 
      And   I should see "20121201001"
      
Scenario: Generate Case ID upon Case Creation Based on Date Opened
      Given I am on the items index page
      Then  I should not see "20121201000"

      Given I am on the new item page
      When  I fill in "Client SSN" with "101010101"
      When  I fill in "Client Name" with "Billy Bob Joe Jr"
      And   I select "2012/December/1" as the date for "date_opened"
      And   I press "Create Case"
      And   I should see "20131201000"
      And   I should see "20121201000"
      
      Given I am on the new item page
      When  I fill in "Client SSN" with "202020202"
      When  I fill in "Client Name" with "Jilly Job Boe Jr"
      And   I select "2013/December/1" as the date for "date_opened"
      And   I press "Create Case"
      Then  I should be on the items index page
      And   I should see "20131201000"
      And   I should not see "20131201001"
      And   I should not see "20121201001"

