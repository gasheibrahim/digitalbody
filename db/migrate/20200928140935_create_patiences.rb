class CreatePatiences < ActiveRecord::Migration[5.2]
  def change
    create_table :patiences do |t|
      t.string :fullname
      t.string :sickness
      t.text :medicines
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
