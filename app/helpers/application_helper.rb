module ApplicationHelper

	def show_blog_and_contact?
		!(["jobs","contact","show"].include?(params[:action])||["blogs"].include?(params[:controller]))
	end

    def footer_style
      show_blog_and_contact? ? "" : "style='min-height:50px'".html_safe 
    end

    def recent_works
      Project.order("created_at DESC").limit(4)
    end

    def recent_blogs
      Blog.order("created_at DESC").limit(4)
    end

    def getClass(url)
      return 'active' if request.path == url
      if url.eql?('/home/index') && request.path.eql?('/')
      	return 'active'
      elsif url == 'other'
      	return 'active' if ["/home/careers","/page_privacy.html","/page_terms.html"].include?(request.url)
      end
    end

    def eight_blopost_images
      Blog.order("created_at DESC").limit(4)
    end

    def two_bloposts
      Blog.order("created_at DESC").limit(2)
    end

    def testimonials
      Testimonial.all
    end
end
