class ExternalPagesController < ApplicationController
  
  def contact
  end

  def jobs
  	@jobs = Job.all
  end

end
