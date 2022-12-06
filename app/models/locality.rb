class Locality < ApplicationRecord
    validates :name, presence: true
    validates :province, presence: true
    validates :name, uniqueness: {scope: %i[name province]}

end