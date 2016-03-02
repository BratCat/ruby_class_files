# parent class Blog, track how many blog posts there are and what to do with them.
class Blog
# create variable that will count blog posts starting at 0 
    @@total_posts = 0
# save all blog posts in an array or hash here
    @@all_blog_posts = []    
    
    def self.all
        @@all_blog_posts
    end
    
# and a method that will increment with each new post and append to the array.
    def self.add(post)
        @@all_blog_posts << post
        @@total_posts += 1
    end
    
    def self.publish
        @@all_blog_posts.each do |post|
            puts "Title:\n #{post.title}"
            puts "Body:\n #{post.content}"
            puts "Publish Date:\n #{post.created_at}"
        end
    end
    
end

    
#create a publish method to output posts to terminal. 

# blogposts class
class BlogPosts < Blog
    
    # ask if user wants to create new blog post. If Y run through the questions to add content. If N stop entering content
    def self.create
        post = new
        puts "Name your blog post:"
        post.title = gets.chomp
        puts "Your blog post content:"
        post.content = gets.chomp
        puts "Your name:"
        post.author = gets.chomp
        post.created_at = Time.now
        post.save
        puts "Do you want to create another blog post? [Y/N]"
        create if gets.chop.downcase == 'y'
end

    def title
        @title
    end 
    
    def title=(title)
        @title = title
    end
    
    def created_at
        @created_at
    end
    
    def created_at=(created_at)
        @created_at = created_at
    end
    
    def content
        @content
    end
    
    def content=(content)
        @content = content
    end
    
    def author
        @author
    end
    
    def author=(author)
        @author = author
    end
    
    def save
        BlogPosts.add(self)
    end
end

BlogPosts.create
all_blog_posts = BlogPosts.all
puts all_blog_posts.inspect
BlogPosts.publish
    
        