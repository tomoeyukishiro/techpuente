Given /the following lessons exist/ do |lessons_table|
  lessons_table.hashes.each do |lesson|
    Lesson.create!(lesson)
  end
end

Then /I should see all of the lessons/ do
  a = page.all('table#lessons tr').length() -1 
  puts a
  puts Lesson.count
  assert a == Lesson.count
end
