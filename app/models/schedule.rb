class Schedule < ApplicationRecord
    validates :day, presence: true
    validates :start_time, presence: true
    validates :end_time, presence: true
    belongs_to :office
end