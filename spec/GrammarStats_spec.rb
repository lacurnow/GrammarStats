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
  describe "#percentage_good" do
    it "returns as an integer the percentage of texts checked so far that passed" do
      new_GrammarStats = GrammarStats.new
      new_GrammarStats.check("Cats cats cats!")
      new_GrammarStats.check("cats mouse cats!")
      new_GrammarStats.check("Cats dog cats?")
      result = new_GrammarStats.percentage_good
      expect(result).to eq 67
    end
    
    it "raises an error if no checks have been done" do
      new_GrammarStats = GrammarStats.new
      expect{ new_GrammarStats.percentage_good }.to raise_error "No previous checks done!"
    end
  end
end