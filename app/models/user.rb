class User < ApplicationRecord
  authenticates_with_sorcery!
    validates :username, uniqueness: true
    validates :username, presence: true
    validates :role, presence: true
    validates :password, presence: true, if: -> { new_record? || changes[:crypted_password] }
    has_many :appointments
    
    enum role:{
        admin: 0,
        employee: 1,
        client: 2
    }
end