class Appointment < ApplicationRecord
    validates :datetime, presence: true
    validates :motive, presence: true
    belongs_to :client
    belongs_to :employee
    belongs_to :office
end