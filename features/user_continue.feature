Feature: Going back to unfinished modules.
  
  As a visitor or an authenticated user
  In order so that I can finish where I left off
  I want to go back to the module where I left off

    Background:
        Given the following lessons exist:
        | title              | body                                      | next      | prev  |
        | First Lesson       | This is the sample body of the module     |           |       |

    Scenario: Log into website from module page
        Given I am the registered user "user@gmail.com"
        And I am on the lesson page for "First Lesson"
        When I login with valid credentials
        Then I should see "Logged in!"
        And I should see "Hello,"

    Scenario: Continue working on unfinished models
        Given I am the registered user "user@gmail.com"
        And I am on the lesson page for "First Lesson"
        When I login with valid credentials
        Then I should see lessons I have already done lessons: 1, 3, 4
	

