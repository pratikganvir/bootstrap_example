module ApplicationHelper

	def show_blog_and_contact?
		!["jobs","contact","show"].include?(params[:action])
	end

    def footer_style
      show_blog_and_contact? ? "" : "style='min-height:50px'".html_safe 
    end
end
