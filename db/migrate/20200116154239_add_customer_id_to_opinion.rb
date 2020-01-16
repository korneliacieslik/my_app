class AddCustomerIdToOpinion < ActiveRecord::Migration[6.0]
  def change
    add_column :opinions, :customer_id, :int
  end
end
