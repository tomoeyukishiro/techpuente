Feature: User Authentication

    As a authenticated user
    In order continue were I left of
    I want to be able to login to the web site

    Background:
        Given the following lessons exist:
            | title              | body                                      | next      | prev  |
            | First Lesson       | This is the sample body of the module     |           |       |

    Scenario: Log in to website from login page
        Given I am the registered user "user@gmail.com"
        And I am on the login page
        When I login with valid credentials
        Then I should be on the Lessons list page
        And I should see "Logged in!"
        And I should see "Hello, Joey"

    Scenario: Log into website from module page
        Given I am the registered user "user@gmail.com"
        And I am on the lesson page for "First Lesson"
        When I login with valid credentials
        Then I should see "Logged in!"
        And I should see "Hello, Joey"

    Scenario: Sign up 
        Given I am on the Lessons list page
        When I follow "Sign Up"
        Then I should see "Register"
        When I finish registering for an account
        Then I should be on the Lessons list page
        And I should see "Signed Up!"

