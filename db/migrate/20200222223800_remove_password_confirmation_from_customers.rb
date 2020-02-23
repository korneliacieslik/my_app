class RemovePasswordConfirmationFromCustomers < ActiveRecord::Migration[6.0]
  def change

    remove_column :customers, :password_confirmation, :string
  end
end
