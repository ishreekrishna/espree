class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def user_must_be_active!
  	if current_spree_user
	    if !current_spree_user.active?
        if current_spree_user.profiles.first
          if current_spree_user.profiles.first.active
          else
            flash[:error] = "User Account is not active"
            redirect_to profile_path(current_spree_user.profiles.first.id)
          end
        else
          flash[:error] = "User Account is not active"
	        redirect_to new_profile_path
        end
	     end
    end
  end

end
