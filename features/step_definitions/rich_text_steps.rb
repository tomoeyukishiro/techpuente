Then /I should see the rich text box/ do
end

When /I append (.*) to the (.*)/ do |a, b|
end

When /I embed (.*) to the (.*)/ do |a, b|
end

Then /I should see a Youtube video/ do
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
