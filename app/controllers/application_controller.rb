class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
     #devise_parameter_sanitizer.for(:sign_up) << :username #для добавления значения в массив
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
