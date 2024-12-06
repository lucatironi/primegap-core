require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "must have an email" do
    user = User.new(email_address: nil, password: "password")
    assert_not user.valid?
  end

  test "must have a password" do
    user = User.new(email_address: "user@example.com", password: nil)
    assert_not user.valid?
  end

  test "password must be long" do
    user = User.new(email_address: "user@example.com", password: "pass")
    assert_not user.valid?
  end

  test "valid user" do
    user = User.new(email_address: "user@example.com", password: "password")
    assert user.valid?
  end
end
