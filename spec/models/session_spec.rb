require "rails_helper"

RSpec.describe Session, type: :model do
  describe "schema" do
    it { is_expected.to have_db_column(:ip_address).of_type(:string) }
    it { is_expected.to have_db_column(:user_agent).of_type(:string) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }

    it { is_expected.to have_db_index(:user_id) }
  end

  describe "associations" do
    it { is_expected.to belong_to(:user).class_name("User") }
  end
end