require "spec_helper"

RSpec.describe Primegap::Core, type: :model do
  describe "VERSION" do
    it { expect(described_class.const_defined?(:VERSION)).to eq true }
    it { expect(described_class::VERSION).to be_kind_of(String) }
  end
end