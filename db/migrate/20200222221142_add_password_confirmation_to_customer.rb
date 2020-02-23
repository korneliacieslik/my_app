class AddPasswordConfirmationToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :password_confirmation, :string
  end
end
