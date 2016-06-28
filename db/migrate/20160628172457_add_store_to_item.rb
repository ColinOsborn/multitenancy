class AddStoreToItem < ActiveRecord::Migration
  def change
    add_column :items, :store_id, :integer
  end
end
