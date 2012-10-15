Feature: navigate between different lessons

    As a visitor
    So that I can go through all the lessons
    I want to go back and forth between lessons

Background: lessons have been added to the database

    Given the following lessons exist:
    | title              | body                                      | 
    | First Lesson       | This is the sample body of the module     |
    | Second Lesson      | This is another sample body of the module |


Scenario: see a list of lessons
    Given I am on the TechPuente home page
    When I follow "Lessons" 
    Then I should see all of the lessons 

Scenario: navigate to the next module
    Given I am on the Lessons list page
    When I go to the show page for "First Lesson"
    And follow "Next"
    Then I should see "Second Lesson"

Scenario: navigate to the previous module
Given I am on the Lessons list page
    When I go to the show page for "Second Lesson"
    And follow "Prev"
    Then I should see "First Lesson"


