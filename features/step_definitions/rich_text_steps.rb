Then /I should see the rich text box/ do

end

When /I add "(.*)" in bold to the lesson body/ do |text|
  steps %Q{
    When I fill in "#{text}" in the CKEditor instance "cke_lesson_body"
  }
end



When /I embed (.*) to the (.*)/ do |a, b|
end

Then /I should see a Youtube video/ do
end

When /^I fill in "([^"]*)" in the CKEditor instance "([^"]*)"$/ do |value, input_id|
  browser = page.driver.browser
  browser.execute_script("CKEDITOR.instances['#{input_id}'].setData('#{value}');")
end
