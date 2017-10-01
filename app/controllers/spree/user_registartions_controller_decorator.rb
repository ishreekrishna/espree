Spree::UserRegistrationsController.class_eval do


	def new
		if !current_spree_user
    	@user = Spree::User.new
    else
    	redirect_to root_path, notice: "Already signed in"
    end
  end

  private

  def spree_user_params
    params.require(:spree_user).permit(Spree::PermittedAttributes.user_attributes, :referral_id)
  end
  
end