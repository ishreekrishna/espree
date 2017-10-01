class AddColumnProfile < ActiveRecord::Migration[5.0]
  def change
  	add_column :profiles, :parent_id, :integer
  	add_column :profiles, :lft, :integer
  	add_column :profiles, :rgt, :integer
  	add_column :profiles, :depth, :integer,  :default => 0
  	add_column :profiles, :children_count, :integer, :default => 0
  end
end
