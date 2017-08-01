require "spec_helper"

RSpec.describe Ruby::Mn do
  it "has a version number" do
    expect(Ruby::Mn::VERSION).not_to be nil
  end

  describe ".next_meetup" do
    context "when the next meetup is next month" do
      subject { Ruby::Mn.next_meetup(Date.new(2017, 7, 31)) }
      it { is_expected.to eq Date.new 2017, 8, 28 }
    end
    context "when the next meetup is this month" do
      subject { Ruby::Mn.next_meetup(Date.new(2017, 8, 1)) }
      it { is_expected.to eq Date.new 2017, 8, 28 }
    end
    context "when the last day of the month is a Sunday" do
      subject { Ruby::Mn.next_meetup(Date.new(2017, 4, 1)) }
      it { is_expected.to eq Date.new 2017, 4, 24 }
    end
  end
end
