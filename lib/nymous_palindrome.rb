require "nymous_palindrome/version"

class String

  # Test if a String is a palindrome (ie it reads the same from left to right and from right to left)
  # @example
  #   "not a palindrome".palindrome? #=> false
  #   "Racecar".palindrome? #=> true
  # @return [Boolean]
  def palindrome?
    processed_content == processed_content.reverse
  end

  private
    def processed_content
      self.scan(/[[:alpha:]]/i).join.downcase
    end
end
