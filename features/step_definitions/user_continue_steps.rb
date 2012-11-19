Then /I did lesson (.*)/ do |lesson_id|
	page.has_xpath?("//a[@style='color:#CC0000' and @href='/lessons/2']") 
end

Then /I should see lessons I have already done lessons: (.*)/ do |marked_list|
	marked = marked_list.split(/[,]\s+/)
	marked.each do |lesson|
		step %Q{I did lesson "#{lesson}"}
	end
end

