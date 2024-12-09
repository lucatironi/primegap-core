require "rails_helper"

RSpec.describe Company, type: :model do
  describe "schema" do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }
  end

  describe "associations" do
    it { is_expected.to have_many(:users) }
    it { is_expected.to have_many(:customers) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
  end

end