class AddUuidToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_users, :uuid, :string
  end
end
