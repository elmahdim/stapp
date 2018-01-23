class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  protect_from_forgery with: :exception

  def not_found
    redirect_to root_path
  end
end
