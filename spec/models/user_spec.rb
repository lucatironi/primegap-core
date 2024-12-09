require "rails_helper"

RSpec.describe User, type: :model do
  describe "schema" do
    it { is_expected.to have_db_column(:email_address).of_type(:string) }
    it { is_expected.to have_db_column(:password_digest).of_type(:string) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }

    it { is_expected.to have_db_index(:company_id) }
    it { is_expected.to have_db_index(:email_address) }
  end

  describe "secure password" do
    it { is_expected.to have_secure_password }
  end

  describe "associations" do
    it { is_expected.to belong_to(:company).optional.class_name("Company") }
    it { is_expected.to have_many(:sessions).class_name("Session") }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:email_address) }
    it { is_expected.to validate_length_of(:password) }
  end

  describe "password should be >= than 8 characters" do
    it { expect(User.new(email_address: "user@email.com", password: nil).save).to be_falsey }
    it { expect(User.new(email_address: "user@email.com", password: "foo").save).to be_falsey }
    it { expect(User.new(email_address: "user@email.com", password: "af3714ff0ffae").save).to be_truthy }
  end
end
