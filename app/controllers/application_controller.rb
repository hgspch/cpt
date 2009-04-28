# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  before_filter :authorize, :except => :login

  # in Rails 2.3.2, [session_]key, session_store, and secret moved to config/initializers/session_store.rb
  # ----------------------------------------------------------------------------------------------------

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  layout "default_layout"

  protected
  def authorize
    unless User.find_by_id(session[:user_id])
      session[:original_uri] = request.request_uri
      flash[:notice] = "veuillez vous identifier"
      redirect_to(:controller => :home, :action => :login)
    end
  end

end
