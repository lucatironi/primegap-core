require "test_helper"

class UserTest < ActiveSupport::TestCase
  context "schema" do
    should have_db_column(:email_address).of_type(:string)
    should have_db_column(:password_digest).of_type(:string)
    should have_db_column(:created_at).of_type(:datetime)
    should have_db_column(:updated_at).of_type(:datetime)

    should have_db_index(:company_id)
    should have_db_index(:email_address)
  end

  context "secure password" do
    should have_secure_password
  end

  context "associations" do
    should belong_to(:company).optional.class_name("Company")
    should have_many(:sessions).dependent(:destroy).class_name("Session")
  end

  context "validations" do
    should validate_presence_of(:email_address)
    should validate_length_of(:password).is_at_least(8)
  end

  test "password should be >= than 8 characters" do
    assert_not User.new(email_address: "user@email.com", password: nil).valid?
    assert_not User.new(email_address: "user@email.com", password: "foo").valid?
    assert User.new(email_address: "user@email.com", password: "af3714ff0ffae").valid?
  end
end
