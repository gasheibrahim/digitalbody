class AddPhonenumberToPatiences < ActiveRecord::Migration[5.2]
  def change
    add_column :patiences, :phonenumber, :string
  end
end
