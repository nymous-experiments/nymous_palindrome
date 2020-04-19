require "nymous_palindrome/version"

module NymousPalindrome
  # Test if a String is a palindrome (ie it reads the same from left to right and from right to left)
  # @example
  #   "not a palindrome".palindrome? #=> false
  #   "Racecar".palindrome? #=> true
  # @return [Boolean]
  def palindrome?
    return false if processed_content.empty?

    processed_content == processed_content.reverse
  end

  private

    def processed_content
      self.to_s.scan(/[[:alnum:]]/i).join.downcase
    end
end

class String
  include NymousPalindrome
end

class Integer
  include NymousPalindrome
end
