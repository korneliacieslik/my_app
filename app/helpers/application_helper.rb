#Application helpers are function that Rails allows create. 
module ApplicationHelper
	
	#function definition
	def full_title(page_title='')
	  base_title = "Healthy bowl"
	    if page_title.empty?
		  base_title
		else page_title + " | " + base_title
		end
	end
end
