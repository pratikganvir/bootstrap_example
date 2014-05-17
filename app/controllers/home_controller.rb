class HomeController < ApplicationController
  def index
    @blog_post = Blog.find(:last,:order => "created_at DESc")
  end

  def features
  end

  def pricing
  end

  def contact_us
  end

  def blog
  end

  def subscribe_newsletter
    NewsletterSubscriber.create(:email => params[:email])
    render :nothing => true
  end

  def privacy
  end

  def culture
  end

  def how_we_hire
  end
end
