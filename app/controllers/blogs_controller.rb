class BlogsController < InheritedResources::Base
	def index
      @blog_posts = Blog.order("created_at DESC").page params[:page]
	end

    def create
    end

    def show
      @blog_post = Blog.find(params[:id])
    end
end
