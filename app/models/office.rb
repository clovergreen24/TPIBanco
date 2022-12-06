class Office < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :address, presence: true
    validates :phone, presence: true

end