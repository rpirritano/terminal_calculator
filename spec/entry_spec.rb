require_relative '../models/entry'

RSpec.describe Entry do

  describe "attributes" do
    let(:entry) {Entry.new('4 + 4','4 - 4', '4 * 4', '4 / 4')}

    it "responds to addition" do
      expect(entry).to respond_to(:addition)
    end
    it "accepts addition" do
      expect(entry.addition).to eq('4 + 4')
    end

    it "responds to subtraction" do
      expect(entry).to respond_to(:subtraction)
    end
    it "accepts subtraction" do
      expect(entry.subtraction).to eq('4 - 4')
    end

    it "responds to multiplication" do
      expect(entry).to respond_to(:multiplication)
    end
    it "accepts multiplication" do
      expect(entry.multiplication).to eq('4 * 4')
    end

    it "responds to division" do
      expect(entry).to respond_to(:division)
    end
    it "accepts division" do
      expect(entry.division).to eq('4 / 4')
    end
  end

  describe "#to_s" do
    it "prints entry as a string" do
      entry = Entry.new('4 + 4','4 - 4', '4 * 4', '4 / 4')
      expected_string = "Addition: 4 + 4\nSubtraction: 4 - 4\nMultiplication: 4 * 4\nDivision: 4 / 4"
      expect(entry.to_s).to eq(expected_string)
    end
  end
end
