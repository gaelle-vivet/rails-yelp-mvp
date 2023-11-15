class RenamePhoneToPhoneNumber < ActiveRecord::Migration[7.1]
  def change
    rename_column :restaurants, :phone, :phone_number
  end
end
