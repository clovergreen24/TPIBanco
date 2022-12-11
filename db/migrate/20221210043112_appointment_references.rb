class AppointmentReferences < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :appointments, :users, column: :client_id
    add_foreign_key :appointments, :users, column: :employee_id
    add_foreign_key :appointments, :offices, column: :office_id
  end
end
