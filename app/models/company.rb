class Company < ApplicationRecord
  include Companies::Associations
  include Companies::Validations
end
