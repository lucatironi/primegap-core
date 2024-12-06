require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  context "schema" do
    should have_db_column(:name).of_type(:string)
    should have_db_column(:created_at).of_type(:datetime)
    should have_db_column(:updated_at).of_type(:datetime)
  end

  context "associations" do
    should have_many(:users).class_name("User")
    should have_many(:customers).class_name("Customer")
  end

  context "validations" do
    should validate_presence_of(:name)
  end
end
