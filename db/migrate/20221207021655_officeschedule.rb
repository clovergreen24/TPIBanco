class Officeschedule < ActiveRecord::Migration[7.0]
  def change
    add_belongs_to :schedules, :office, foreign_key: true
  end
end
