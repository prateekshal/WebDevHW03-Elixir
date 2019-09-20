defmodule Practice.Factor do

	def factor(n) when n === 1 do
		"It is 1! Cannot be a prime"
	end

	def factor(n) when is_binary(n) do
		list =  []
		{number, _} = Integer.parse(n)
		factor(2, number, list)
	end

	def factor(n) when is_integer(n) do
		list = []
		factor(2, n, list)
	end
	
	def factor(i, n, list) when (i*i <= n) do
		if rem(n,i) !== 0 do
			factor((i+1),n,list)
		else
			list = list ++ [i]
			factor(i, ((Kernel.trunc(n/i))), list)
		end
	end

	def factor(i,n,list) when (i*i > n) do
		cond do
			n > 1 -> 
				list ++ [n]
		end
	end


end
