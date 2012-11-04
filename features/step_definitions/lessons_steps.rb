Given /the following lessons exist/ do |lessons_table|
  lessons_table.hashes.each do |lesson|
    Lesson.create!(lesson)
  end
end

Then /I should see all of the lessons/ do
  a = page.all('div#lessons article').length 
  assert a == Lesson.count
end

When /I have added "(.*)" with body "(.*)", prev of "(.*)", and next of "(.*)"/ do |title, body, p, n|
  steps %Q{
    When I fill in "lesson_title" with "#{title}"
    And I fill in "lesson_body" with "#{body}"
    And I select "#{p}" from "lesson_prev"
    And I select "#{n}" from "lesson_next"
    And I press "Save"
  }
end
