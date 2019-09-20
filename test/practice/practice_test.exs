defmodule Practice.PracticeTest do
  use ExUnit.Case
  import Practice

  test "double some numbers" do
    assert double(4) == 8
    assert double(3.5) == 7.0
    assert double(21) == 42
    assert double(0) == 0
  end

  test "factor some numbers" do
    assert factor(5) == [5]
    assert factor(8) == [2,2,2]
    assert factor(12) == [2,2,3]
    assert factor(226037113) == [3449, 65537]
    assert factor(1575) == [3,3,5,5,7]
  end

  test "evaluate some expressions" do
    assert calc("5") == 5
    assert calc("5 + 1") == 6
    assert calc("5 * 3") == 15
    assert calc("10 / 2") == 5
    assert calc("10 - 2") == 8
    assert calc("5 * 3 + 8") == 23
    assert calc("8 + 5 * 3") == 23
  end

  # TODO: Add two unit tests for palindrome.

  test "evaluate palindrome expressions" do
    assert palindrome("abba") == "Yes, it is a Palindrome"
    assert palindrome("abcdef") == "No, it is not a Palindrome"
    assert palindrome("yesyesyes") == "No, it is not a Palindrome"
    assert palindrome("palindromemordnilap") == "Yes, it is a Palindrome"
  end

  test "evaluate palindrome numbers" do
    assert palindrome(12345) == "No, it is not a Palindrome"
    assert palindrome(1234321) == "Yes, it is a Palindrome"
    assert palindrome(37463746) == "No, it is not a Palindrome"
    assert palindrome(123456787654321) == "Yes, it is a Palindrome"
  end
end
