class AddActiveSpreeUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :spree_users, :active, :boolean, default: false
  end
end
