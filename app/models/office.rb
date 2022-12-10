class Office < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :address, presence: true
    validates :phone, presence: true
    belongs_to :locality
    has_many :schedules, dependent: :destroy
    accepts_nested_attributes_for :schedules, allow_destroy: true

end