class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied! you are not allowed to view this page. "
    redirect_to main_app.root_path, :alert => exception.message
  end

  def after_sign_in_path_for(resource_or_scope)
    rails_admin.dashboard_path
  end

end
