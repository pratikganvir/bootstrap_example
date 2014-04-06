class ApplicationController < ActionController::Base
  protect_from_forgery
  after_filter :pageview

  def pageview
    PageView.create({
                      :referrer              => request.referrer,
                      :session              => request.session_options[:id],
                      :ip_address           => request.remote_ip,
                      :remote_agent           => request.env["HTTP_USER_AGENT"],
                    })
  end

end
