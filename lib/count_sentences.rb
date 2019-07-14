require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
  end
end 

  def count_sentences
    new_array = self.split(/[.?!]/).reject {|string| string.empty?}
    return new_array.lenth
    self.split(/[.!?]/).reject {|x| x.empty?}.size
  end
end