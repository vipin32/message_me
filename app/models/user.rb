class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, length: {minimum:3, maximum:20}, uniqueness: {case_sensitive: false}

    has_many :messages

    has_secure_password
end
