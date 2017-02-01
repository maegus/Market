class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  validates :name, presence: true,
                   length: { maximum: 16, minimum: 4 }
  has_secure_password
end
