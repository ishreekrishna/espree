class AddReferralIdProfile < ActiveRecord::Migration[5.0]
  def change
  	add_column :profiles, :referral_id, :integer
  end
end
