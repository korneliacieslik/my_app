class RemoveCartIdFromLineItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :line_items, :cart_id, :bigint
  end
end
