class BlogPostsController < ApplicationController
    def index
        @blog_posts = BlogPost.all
      end

      def new
        @blog_post = BlogPost.new
      end
    
      def create
        @blog_post = BlogPost.new(blog_post_params)
        if @blog_post.save
          redirect_to blog_posts_path, notice: 'Post was successfully created.'
        else
          render :new
        end
      end
    
      private
    
      def blog_post_params
        params.require(:blog_post).permit(:title, :author, :contact, :content)
      end
end
