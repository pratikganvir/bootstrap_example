class BlogsController < InheritedResources::Base
    layout "external_pages"
	def index
      @blog_posts = Blog.order("created_at DESC").page params[:page]
	end

    def create
    end

    def show
      @blogpost = Blog.find(params[:id])
    end
end
