class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, length: {minimum:3, maximum:20}
end
