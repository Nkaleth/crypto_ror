class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates_format_of :email, with: /\A\S+@\S+\z/
  validates :password_digest, presence: true
end
