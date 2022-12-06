class Officelocality < ActiveRecord::Migration[7.0]
  def change
    add_belongs_to :offices, :locality, foreign_key: true
  end
end
