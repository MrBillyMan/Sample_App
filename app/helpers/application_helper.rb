module ApplicationHelper

	def full_title(page_title)
		base_title = "Ruby on Rails Tutorial Sample App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end


	def string_message(message)
		return "String is empty" if message.empty?
		return "String is not empty"
	end

end
