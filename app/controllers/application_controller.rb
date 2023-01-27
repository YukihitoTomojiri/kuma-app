class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :email,
      :name,
      :birthday,
      :postcode,
      :prefecture_name,
      :address_city,
      :address_street,
      :address_building,
      :section_id,
      :job_id
    ])
  end
end
