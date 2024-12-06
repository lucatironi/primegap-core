module Users
  module Validations
    extend ActiveSupport::Concern

    included do
      validates_presence_of :email_address
      validates :password, length: { minimum: 8 }, allow_blank: true
    end
  end
end
