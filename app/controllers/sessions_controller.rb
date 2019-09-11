class SessionsController < Devise::SessionsController

  def after_sign_in_path_for(resource)
    menus_path(resource)
  end
end
