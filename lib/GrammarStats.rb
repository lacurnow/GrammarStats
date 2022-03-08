class GrammarStats
  def initialize
    @check_count_pass = 0
    @check_count_total = 0
  end

  def check(text)
    @check_count_total += 1 
    if (text.chr == text.chr.upcase) && (text.end_with?("!", ".", "?"))
      @check_count_pass += 1
      return true
    else
      false
    end
    # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good
    fail "No previous checks done!" if @check_count_total == 0
    (@check_count_pass / @check_count_total.to_f * 100).ceil
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end