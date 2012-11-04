Feature: navigate between different lessons

    As a visitor
    So that I can go through all the lessons
    I want to go back and forth between lessons

Background: lessons have been added to the database

    Given the following lessons exist:
    | title              | body                                      | next      | prev  |
    | First Lesson       | This is the sample body of the module     | 2         | 1     |
    | Second Lesson      | This is another sample body of the module | 3         | 1     |
    | Third Lesson       | This is the 3rd elsson                    | 3         | 2     |


#Scenario: see a list of lessons
#    Given I am on the home page
#    Then show me the page
#    When I follow "Lessons" 
#    Then I should see all of the lessons 

Scenario: see list of lessons
     Given I am on the Lessons list page
     Then I should see all of the lessons

Scenario: navigate to the next module
    Given I am on the lesson page for "First Lesson"
    When follow "Next"
    Then I should see "Second Lesson"

Scenario: navigate to the previous module
    Given I go to the lesson page for "Second Lesson"
    When follow "Prev"
    Then I should see "First Lesson"

Scenario: add new lesson
    Given I am on the new lesson page
    When I have added "Lesson Especial" with body "Es un lesson que yo quiero", prev of "First Lesson", and next of "Second Lesson"
    Then I should see "Lesson was successfully created"

Scenario: edit lesson
    Given I am on the edit page for 1
    And I fill in "lesson_title" with "New Lesson Name"
    And I press "Save"
    Then I should see "Lesson was successfully updated"


Scenario: delete lesson
    Given I am on the Lessons list page
    And I follow "delete_3"
    Then I should not see "lesson"

Scenario: 
        
