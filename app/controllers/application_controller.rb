class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
    keys: [:last_name, :first_name, :first_name1, :first_name2,
          :area, :since, :text, :image, :anniversary])
  end

end
