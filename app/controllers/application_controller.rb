class ApplicationController < ActionController::Base
    include Teacher::SessionsHelper
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :skype_id, :favorite_subject, :weak_subject, :etc])
            devise_parameter_sanitizer.permit(:account_update, keys: [:name, :age, :skype_id, :favorite_subject, :weak_subject, :etc])
        end
end
