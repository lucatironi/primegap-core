class User < ApplicationRecord
  include Users::Associations
  include Users::Validations

  has_secure_password

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
