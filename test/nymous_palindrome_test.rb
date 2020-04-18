require "test_helper"

class NymousPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::NymousPalindrome::VERSION
  end

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_non_palindrome
    refute 123.palindrome?
  end

  def test_integer_palindrome
    assert 1234321.palindrome?
  end
end
