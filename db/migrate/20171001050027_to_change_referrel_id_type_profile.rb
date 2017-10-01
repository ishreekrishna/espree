class ToChangeReferrelIdTypeProfile < ActiveRecord::Migration[5.0]
  def change
  	change_column :profiles, :referral_id, :string
  end
end
