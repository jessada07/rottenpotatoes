Feature: Test BDD
  As a customer
  I want to use rottenpotatoes
  So that i can use rottenpotatoes login page
  
  Scenario: Go to welcome page
    When I go to the welcome page
    Then I should be on the welcome page
    
  Scenario: Sign up with e-mail
    Given I am on the welcome page
    When I follow "Sign up" 
    Then I should be on the sign up page
    When I fill in "Name" with "cat"
    And I fill in "Email" with "catanddog@gmail.com"
    And I fill in "Password" with "catanddog"
    And I press "Sign up" 
    Then I should be on the welcome page
    
  Scenario: Sign in with e-mail
    Given I am on the welcome page
    When I fill in "Email" with "catanddog@gmail.com"
    And I fill in "Password" with "catanddog"
    And I press "Login" 
    Then I should be on the home page
  
  # Scenario: Sign in with twitter
  #   Given I am on the welcome page
  #   When I follow "twitter"
  #   Then I should be on the twitter
  #   When I follow "อนุญาตแอพ"
  #   Then I should be on the home page