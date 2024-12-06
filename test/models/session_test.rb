require "test_helper"

class SessionTest < ActiveSupport::TestCase
  context "schema" do
    should have_db_column(:ip_address).of_type(:string)
    should have_db_column(:user_agent).of_type(:string)
    should have_db_column(:created_at).of_type(:datetime)
    should have_db_column(:updated_at).of_type(:datetime)

    should have_db_index(:user_id)
  end

  context "associations" do
    should belong_to(:user).class_name("User")
  end
end
