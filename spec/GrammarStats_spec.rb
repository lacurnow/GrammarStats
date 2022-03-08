require 'GrammarStats'

RSpec.describe GrammarStats do
  describe "#check(text)" do
    it "returns false if a string begins with just a capital letter" do
      new_GrammarStats = GrammarStats.new
      result = new_GrammarStats.check("Cats cats cats")
      expect(result).to eq false
    end

    it "returns false if a string ends with just a sentence-ending puncation mark" do
      new_GrammarStats = GrammarStats.new
      result = new_GrammarStats.check("cats cats cats!")
      expect(result).to eq false
    end
    
    it "returns true if a string begins with a capital letter AND ends with a sentence-ending puncation mark" do
      new_GrammarStats = GrammarStats.new
      result = new_GrammarStats.check("Cats cats cats!")
      expect(result).to eq true
    end
  end
end