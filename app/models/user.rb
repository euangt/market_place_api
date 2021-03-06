class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :email, format: { with: /@/ }
  validates :password_digest, presence: true

  has_secure_password
  has_many :products, dependent: :destroy
end
