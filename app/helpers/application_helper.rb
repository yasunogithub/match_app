module ApplicationHelper
    def active?(controller_name, action_name)
        return "active" if controller_name == params[:controller] && action_name == params[:action]
    end
end
