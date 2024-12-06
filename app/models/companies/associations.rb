module Companies
  module Associations
    extend ActiveSupport::Concern

    included do
      has_many :users
      has_many :customers
    end
  end
end
