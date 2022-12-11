class Appointment < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :motive
      t.references :client
      t.references :office
      t.references :employee
      t.timestamps
    end
  end
end
