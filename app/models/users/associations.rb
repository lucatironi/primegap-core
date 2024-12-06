module Users
  module Associations
    extend ActiveSupport::Concern

    included do
      has_many :sessions, dependent: :destroy
    end
  end
end
