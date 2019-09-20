defmodule Practice.Palindrome do

	def palindrome(expr) when is_binary(expr) do
		String.downcase(expr)
		|> String.reverse
		|> isPalindrome(expr)
	end

	def palindrome(expr) when is_integer(expr) do
		to_string(expr)
		|> palindrome
	end
	
	def isPalindrome(reversedWord, expr) when reversedWord === expr do
		"Yes, it is a Palindrome"

	end
	
	def isPalindrome(reversedWord, expr) when reversedWord !== expr do
		"No, it is not a Palindrome"
	end

end
		 
