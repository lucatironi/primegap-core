module Users
  module Associations
    extend ActiveSupport::Concern

    included do
      belongs_to :company, optional: true
      has_many :sessions, dependent: :destroy
    end
  end
end
