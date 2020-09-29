class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.timestamp :appointmentdate
      t.references :patience, foreign_key: true

      t.timestamps
    end
  end
end
