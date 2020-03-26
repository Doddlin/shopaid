class ApplicationController < ActionController::Base


 
  def switch_locale(&action)
    country = request.location.country_code
    locale = country || "en"
    I18n.with_locale(locale, &action)
  end

  around_action :switch_locale

    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :country, :city, :postcode, :ishelper])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :country, :city, :postcode, :ishelper])
      end


end
