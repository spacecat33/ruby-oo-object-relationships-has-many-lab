class Author
    attr_accessor :name
  
    @@post_count = 0

    def initialize(name)
      @name = name
      @posts = []
    end
  
    def posts
      Post.all.select {|post| post.author == self}
    end
    
    def add_post(post)
      @@post_count += 1
      @posts << post
      post.author = self
    end

    def add_post_by_title(title)
        @@post_count += 1
        y = Post.new(title)
        self.add_post(y)
        y
    end

    def self.post_count
        @@post_count     # Or   Post.all.count
    end
  
  end