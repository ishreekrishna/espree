module Spree
	class ChargesController < Spree::BaseController
    def new
    end

    def create
      # Amount in cents
      @amount = 150

      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )

      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
      )
      if charge.save 
        current_spree_user.profiles.first.update(active: true)
        redirect_to profiles_path
      end

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end
  end
end