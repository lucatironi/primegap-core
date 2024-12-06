require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  test "must have a name" do
    company = Company.new(name: nil)
    assert_not company.valid?
  end

  test "valid company" do
    company = Company.new(name: "Acme & Co")
    assert company.valid?
  end
end
