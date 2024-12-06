require "test_helper"

class CustomerTest < ActiveSupport::TestCase
  context "schema" do
    should have_db_column(:full_name).of_type(:string)
    should have_db_column(:first_name).of_type(:string)
    should have_db_column(:last_name).of_type(:string)
    should have_db_column(:email).of_type(:string)
    should have_db_column(:phone).of_type(:string)
    should have_db_column(:created_at).of_type(:datetime)
    should have_db_column(:updated_at).of_type(:datetime)

    should have_db_index(:company_id)
  end

  context "associations" do
    should belong_to(:company).optional.class_name("Company")
  end

  context "validations" do
    should validate_presence_of(:full_name)
  end

  context "#split_full_name" do
    should "with last_name" do
      customer = Customer.create(full_name: "Doe")

      assert_nil customer.first_name
      assert_equal customer.last_name, "Doe"
    end

    should "with first_name and last_name" do
      customer = Customer.create(full_name: "John Doe")

      assert_equal customer.first_name, "John"
      assert_equal customer.last_name, "Doe"
    end

    should "with first_name, middle_name and last_name" do
      customer = Customer.create(full_name: "John F. Doe")

      assert_equal customer.first_name, "John F."
      assert_equal customer.last_name, "Doe"
    end
  end
end
