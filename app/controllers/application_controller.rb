class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protect_from_forgery
  protect_from_forgery with: :exception
  before_filter :set_locale


  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    Rails.application.routes.default_url_options[:locale]= I18n.locale
  end

  def default_url_options(options={})
    { locale: I18n.locale }.merge options
  end

  private

    def user_not_authorized
      flash[:alert] = "Access Denied"
      redirect_to (request.referrer || root_path)
    end

end
