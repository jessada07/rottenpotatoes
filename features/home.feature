Feature: Test BDD
  As a customer
  I want to use rottenpotatoes homepage
  So that i can use rottenpotatoes homepage
  @pee
  Scenario: Cancel update movie
    When I go to the home page
    Then I should see "All Movies"
    
  Scenario: Follow via banner
    Given I am on the Create New Movie page
    When I follow "RottenPotatoes"
    Then I should be on the home page
  

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
    When I follow "Add Movie"
    Then I should be on the Create New Movie page
   

  Scenario: Cancel update movie
    Given I am on the home page
    When I follow "Add Movie"
    Then I should be on the Create New Movie page
    
  @test1
  Scenario: Go to Edit page
    Given I am on the home page
    When I follow "Add Movie"
    Then I should be on the Create New Movie page
    When I fill in "Title" with "Thor Ragnarok"
    And I select "PG-13" from "Rating"
    And I press "Save"
    Then I should be on the movie page
    And I follow "Back"
    And I should be on the home page
    When I follow "More about Thor Ragnarok"
    And I should be on the movie page
    And I follow "Edit"
    Then I should be on the movie edit page
    When I fill in "Title" with "Thor3"
    And I press "Save"
    Then I should be on the movie page
    And I should see "Thor3"
    When I press "Delete"
    Then I should be on the home page
  
  Scenario: Go to Create new page
    Given I am on the home page
    When I follow "Add Movie"
    Then I should be on the Create New Movie page

  
  Scenario: Go to Create new page
    Given I am on the home page
    When I follow "Add Movie"
    Then I should be on the Create New Movie page
    
    
  Scenario: Follow to movie page
    Given I am on the home page
    When I follow "More about"
    Then I should be on the movie page
    And I should see "Details about Men In Black"
  
  
  Scenario: Cancel to add a movie
    Given I am on the home page
    When I follow "Add Movie"
    Then I should be on the Create New Movie page
    And I follow "Cancel"
    Then  I should be on the home page
    
  Scenario: Edit movie
    Given I am on the movie page
    When I follow "Edit"
    Then I should be on the movie edit page
    
  Scenario: Cancel to Edit and Back to movie page
    Given I am on the movie page
    When I follow "Edit"
    And I should be on the movie edit page
    And I follow "Cancel"
    Then I should be on the movie page
    
  Scenario: Follow to movie page
    Given I am on the home page
    When I follow "More about"
    Then I should be on the movie page
    And I should see "Details about Men In Black"
    
  Scenario: Edit movie
    Given I am on the home page
    Then I should see "Men In Black"
    When I follow "More about"
    Then I should be on the movie page
    When follow "Edit"
    Then I should be on the movie edit page
    When I fill in "Title" with "Batman"
    And I select "R" from "Rating"
    And I press "Save"
    Then I should be on the movie page
    And I should see "Details about Batman"
    And I should see "R"
    
  Scenario: Delete movie
    Given I am on the home page
    Then I should see "Batman"
    When I follow "More about"
    Then I should be on the movie page
    When I follow "Delete"
    Then I should be on the home page
    When I go to the home page # again
    And I should not see "Batman"