Feature: Going back to unfinished modules.
  
  As an authenticated user
  In order so that I can finish where I left off
  I want to go back to the module where I left off

    Background:
        Given the following lessons exist:
        | title              | body                                       | next     | prev |
        | First Lesson       | This is the sample body of the module1     |          |      |
        | Second Lesson      | This is the sample body of the module2     |          |      |
        | Third Lesson       | This is the sample body of the module3     |          |      |

    Scenario: Continue working on unfinished models
        Given I am the registered user "user@gmail.com"
        When I am on the home page
        And I login with valid credentials
        And I am on the lesson page for lesson with id 2
        And I press "Done"
	Then I should see lessons I have already done lessons: 2

