class User < ApplicationRecord
  validates: email, uniqueness: true
  validates: email, format: { with: /@/ }
  validates: :password_digest, presence :true
end