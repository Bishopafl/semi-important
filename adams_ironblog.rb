class Blog
	def initialize()
		@post = []
	end

	def add_post(post)
		@new_post.push(post)
	end

	
end



class Post 
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end

	def front_page
		puts "#{@title}" 
		puts "Post date: #{@date}"
		puts "Post 1 #{@text}"
	end

	def post_breaker
		puts"--------------"
	end
end


new_post = Post.new("Massive Title", "Tuesday", "Has this text.")
new_post.front_page
new_post = Post.new("Super Title", "Wednesday", "Poops MaGoops")
new_post.front_page

blog = Blog.new()
blog.add_post(new_post)
blog.publish_front_page









