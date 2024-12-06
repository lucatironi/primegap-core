module Customers
  module Validations
    extend ActiveSupport::Concern

    included do
      validates_presence_of :full_name
    end
  end
end
