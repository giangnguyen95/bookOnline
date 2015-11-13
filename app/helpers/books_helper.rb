module BooksHelper
	def gravatar_for(book, options = { size: 40 })
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, class: "gravatar")
	end 
end
