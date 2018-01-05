require_relative '../models/calculator'

RSpec.describe Calculator do
  describe "attributes" do
    it "responds to entries" do
      input = Calculator.new
      expect(input).to respond_to(:entries)
    end
    it "initializes entries as an array" do
      input = Calculator.new
      expect(input.entries).to be_an(Array)
    end
    it "initializes entries as empty" do
      input = Calculator.new
      expect(input.entries.size).to eq(0)
    end
  end

  describe "#add_entry" do
    it "adds only one entry to the calculator" do
      input = Calculator.new
      input.add_entry('4 + 4','4 - 4', '4 * 4', '4 / 4')
      expect(input.entries.size).to eq(1)
    end

    it "adds the correct information to entries" do
      input = Calculator.new
      input.add_entry('4 + 4','4 - 4', '4 * 4', '4 / 4')
      new_entry = input.entries[0]

      expect(new_entry.addition).to eq('4 + 4')
      expect(new_entry.subtraction).to eq('4 - 4')
      expect(new_entry.multiplication).to eq('4 * 4')
      expect(new_entry.division).to eq('4 / 4')
    end
  end
end
