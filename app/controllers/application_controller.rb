class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale


def profile
end

 private

  def set_locale
    I18n.locale = http_accept_language.compatible_language_from(%w(en de es ru pt it fr pl))
    unless I18n.locale 
      I18n.locale= I18n.default_locale
    end
  end


end
