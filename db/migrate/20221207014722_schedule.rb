class Schedule < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :day
      t.time :start_time
      t.time :end_time
      t.timestamps
    end
  end
end
