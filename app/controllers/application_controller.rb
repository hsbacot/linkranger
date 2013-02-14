class ApplicationController < ActionController::Base
  protect_from_forgery


  # before_filter :ensure_domain

  # APP_DOMAIN = 'www.linkranger.me'

  # def ensure_domain
  # 	if (request.env[HTTP_HOST] != APP_DOMAIN )
  # 		# 
  # 		redirect_to "http://#{APP_DOMAIN}#{request.fullpath}", :status => 301 if ENV["RAILS_ENV"] == 'production'
  # 	end
  # end

	def after_sign_in_path_for(resource)
	 links_path
	end
end
