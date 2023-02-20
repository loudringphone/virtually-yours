class User < ApplicationRecord
    validates :email, :uniqueness => true, :presence => true, uniqueness: { case_sensitive: false }, format: { with: /\A[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+\z/, message: "must be in the format of 'user@example.com'" }
    validates :first_name, :presence => true
    validates :last_name, :presence => true
    validates :first_name, length: { minimum: 2 }
    validates :last_name, length: { minimum: 2 }
    validates :first_name, format: { with: /\A[a-zA-Z]+\z/, message: "can only contain letters" }
    validates :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "can only contain letters" }
end
