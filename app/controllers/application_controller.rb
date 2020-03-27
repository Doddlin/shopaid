class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action :set_locale

 
  ##def switch_locale(&action)
  ##  country = request.location.country_code
  ##  locale = country.downcase
  ##  I18n.with_locale(locale, &action)
  ##end
  
  
  

  ##around_action :switch_locale

   

  

  private
  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end
  def extract_locale
    parsed_locale = request.location.country_code.downcase
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :country, :city, :postcode, :ishelper])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :country, :city, :postcode, :ishelper])
      end


end
