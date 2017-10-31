Feature: RottenPoatoes Features
  As a customer
  I want to use rottenpotatoes
  So that i can use rottenpotatoes website
  
  # Scene 1 : First Impression (Welcome page)
  
  Scenario: First Impression
    When I go to the website page
    Then I should be on the welcome page
    
  Scenario: I wanna be a member
    Given I am on the welcome page
    When I follow "Sign up"
    Then I should be on the sign up page

  # Scene 2 : See to the new world (Sign up page)
  
  Scenario: First time to sign up
    When I go to the sign up page
    Then I should be on the sign up page
    
  Scenario: Sign up by e-mail and sign in by e-mail
    Given I am on the sign up page
    When I fill in "Name" with "Legend"
    And I fill in "Email" with "Legendary@gmail.com"
    And I fill in "Password" with "faker"
    And I press "Sign up"
    Then I should be on the welcome page
    When I fill in "Email" with "Legendary@gmail.com"
    And I fill in "Password" with "faker"
    And I press "Login"
    Then I should be on the home page
    And I should see "Log Out"
    
  Scenario: Sign up again
    Given I am on the sign up page
    When I fill in "Name" with "Legend"
    And I fill in "Email" with "Legendary@gmail.com"
    And I fill in "Password" with "faker"
    And I press "Sign up"
    Then I should be on the sign up page
    And I should see "already exist"
    
  Scenario: No sign up but i wanna sign in
    Given I am on the sign up page
    And I follow "Login"
    Then I should be on the welcome page

  # Scence 3 : Travel to golden movie path (Home page)
  
  Scenario: Search the mystery movies
    When I go to the home page
    Then I should be on the home page
    
  Scenario: Banner is real
    Given I am on the home page
    When I follow "RottenPotatoes"
    Then I should be on the home page
    
  Scenario: I wanna to add movie to list
    Given I am on the welcome page
    And I fill in "Email" with "Legendary@gmail.com"
    And I fill in "Password" with "faker"
    And I press "Login"
    Then I should be on the home page
    When I follow "Add Movie"
    Then I should be on the create new movie page
    
  # Scence 4 : Note the travel to my heart (Add movie page)
  
  Scenario: Fill in for add movie
    Given I am on the welcome page
    And I fill in "Email" with "Legendary@gmail.com"
    And I fill in "Password" with "faker"
    And I press "Login"
    Then I should be on the home page
    Given I am on the create new movie page
    When I fill in "Title" with "Men In Black"
    And I select "PG-13" from "Rating"
    And I press "Save"
    Then I should be on the movie page
    And I should see "Details about Men In Black"
  
  Scenario: Dive into the movie
    Given I am on the home page
    When I follow "More about"
    Then I should be on the movie page
    And I should see "Details about Men In Black"

  Scenario: Cancel add movie
    Given I am on the welcome page
    And I fill in "Email" with "Legendary@gmail.com"
    And I fill in "Password" with "faker"
    And I press "Login"
    Then I should be on the home page
    Given I am on the create new movie page
    When I follow "Cancel"
    Then I should be on the home page

  # Scene 5 : See movie detail (Movie page)

  Scenario: See movie detail
    When I am on the movie page
    Then I should be on the movie page
  
  Scenario: Edit movie
    Given I am on the welcome page
    And I fill in "Email" with "Legendary@gmail.com"
    And I fill in "Password" with "faker"
    And I press "Login"
    Then I should be on the home page
    Given I am on the movie page
    When I follow "Edit"
    Then I should be on the movie edit page
    
  Scenario: Movie back to home
    Given I am on the welcome page
    And I fill in "Email" with "Legendary@gmail.com"
    And I fill in "Password" with "faker"
    And I press "Login"
    Then I should be on the home page
    Given I am on the movie page
    When I follow "Back"
    Then I should be on the home page
  
  # Scene 6 : Edit my moive (Edit Movie Page)
  
  Scenario: Edit this movie
    Given I am on the welcome page
    And I fill in "Email" with "Legendary@gmail.com"
    And I fill in "Password" with "faker"
    And I press "Login"
    Then I should be on the home page
    Given I am on the movie edit page
    When I fill in "Title" with "Thor"
    And I select "G" from "Rating"
    And I press "Save"
    Then I should be on the movie page
    And I should see "Thor"
    And I should see "G"
    
  Scenario: I wanna edit the movie but i change my mimd
    Given I am on the welcome page
    And I fill in "Email" with "Legendary@gmail.com"
    And I fill in "Password" with "faker"
    And I press "Login"
    Then I should be on the home page
    Given I am on the movie edit page
    When I follow "Cancel"
    Then I should be on the movie page
    
  # Scence 7 : Home page with no login
  Scenario: Home page without login
    Given I am on the home page
    Then I should not see "Log in"
    And I should not see "Add Movie"
  
  Scenario: Movie without login
    Given I am on the movie page
    When I should not see "Edit"
    And I should not see "Delete"
    
  Scenario: Add movie without login
    When I go to the create new movie page
    Then I should not be in the create new movie page
    
  # Scence 8 : End of life
    
  Scenario: Delete movie
    Given I am on the welcome page
    And I fill in "Email" with "Legendary@gmail.com"
    And I fill in "Password" with "faker"
    And I press "Login"
    Then I should be on the home page
    Given I am on the movie page
    When I press "Delete"
    Then I should be on the home page
    When I go to the home page
    Then I should not see "Thor"