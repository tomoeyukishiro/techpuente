Feature: use rich text on lesson and question pages

  As an admin
  So that I can create beautiful lessons and question pages
  I want to be able to use rich text

Background: lessons have been added to the database

    Given the following lessons exist:
    | title              | body                                      | next      | prev  |
    | First Lesson       | This is the sample body of the module     | 2         | 1     |
    | Second Lesson      | This is another sample body of the module | 3         | 1     |
    | Third Lesson       | This is the 3rd lesson                    | 3         | 2     |


Scenario: find and see the rich text box
    Given I am on the edit page for 3
    Then I should see the rich text box

Scenario: create bold text
  Given I am on the edit page for 3
  When I append "This is some bold text!" in bold to the lesson body
  And I press "Submit"
  Then I should see "<b>This is some bold text!</b>"

Scenario: embed Youtube video
  Given I am on the edit page for 3
  When I embed the youtube video "http://www.youtube.com/watch?&v=0Ei6-2wZiqg" to the body
  And I press "Submit"
  Then I should see a Youtube video

Scenario: add bullet points
  Given I am on the edit page for 3
  When I append the bullet "I'm a bullet" to the body
  And I press "Submit"
  Then I should see "<li>I'm a bullet"

