class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, length: { in: 3..20 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { in: 8..40 }
end
