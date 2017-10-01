class AddParentIdToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :spree_users, :parent_id, :string
    add_column :spree_users, :credit, :decimal
  end
end
