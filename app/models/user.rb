class User < ApplicationRecord
    validates :username, uniqueness: true
    validates :username, presence: true
    
    enum role:{
        admin: 0,
        employee: 1,
        client: 2
    }
end