require "spec_helper"

RSpec.describe Ruby::Mn do
  it "has a version number" do
    expect(Ruby::Mn::VERSION).not_to be nil
  end

  describe ".next_meetup" do
    subject { Ruby::Mn.next_meetup }
    it { is_expected.to eq Date.new 2017, 8, 28 }
  end
end
