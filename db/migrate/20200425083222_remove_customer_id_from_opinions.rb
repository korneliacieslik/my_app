class RemoveCustomerIdFromOpinions < ActiveRecord::Migration[6.0]
  def change
    remove_column :opinions, :customer_id, :integer
  end
end
