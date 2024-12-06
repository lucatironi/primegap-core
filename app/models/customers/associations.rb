module Customers
  module Associations
    extend ActiveSupport::Concern

    included do
      belongs_to :company, optional: true
    end
  end
end
