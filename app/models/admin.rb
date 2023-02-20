class Admin < ApplicationRecord
    validates_confirmation_of :password
    has_secure_password
    # validates :email, :uniqueness => true, :presence => true, uniqueness: { case_sensitive: false }, format: { with: /\A[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+\z/, message: "must be in the format of 'user@example.com'" }
    # validate :pasword_must_not_be_blank

    # def pasword_must_not_be_blank
    #     if password.blank?
    #       errors.add(:password, "must not be blank")
    #     end
    # end
end
