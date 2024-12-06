require "test_helper"

class CustomerTest < ActiveSupport::TestCase
  test "must have a full name" do
    customer = Customer.new(full_name: nil)
    assert_not customer.valid?
  end

  test "valid customer" do
    customer = Customer.new(full_name: "John Doe")
    assert customer.valid?
  end
end
