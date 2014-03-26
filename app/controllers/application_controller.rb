class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def after_sign_in_path_for(resource)
  # user_path(current_user)
  if current_user.people.count ==  0
   new_user_person_path(current_user)
  else
    user_path(current_user)
  end
end


end
