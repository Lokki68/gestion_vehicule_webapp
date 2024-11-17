class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller? && (controller_name == 'sessions' || controller_name == 'passwords')
      'login'
    else
      'application'
    end
  end
end
