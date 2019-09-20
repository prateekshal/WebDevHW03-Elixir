defmodule Practice.IP do
	def iP(expr) do
		expr2 = expr
		|> String.split(~r/\s+/)
		newExpr = []
		stack = nil
		[head | tail] = expr2
		post = checker(head, tail, stack, newExpr)

		IO.puts(post)
	end

	def checker(val, list, stack, newExpr) when (stack == nil) do

		IO.puts("Stack empty checker")
		[head | tail] = list
		if Integer.parse(val) != :error do
			IO.puts("Integer")
			newExpr = newExpr ++ [val]
			checker(head, tail, stack, newExpr)
		else
			IO.puts("Operator")
			IO.puts(val)
			stack = [val]
			checker(head, tail, stack, newExpr)
		end
	end

	def checker("", "", stack, newExpr) do
		IO.puts("List empty checker")
		if (stack != nil) do
			IO.puts("stack is not nil")
			newExpr = newExpr ++ stack
			IO.puts(newExpr)
		else
			IO.puts("List empty, stack empty")
			newExpr
		end
	end

	def checker(val, list, stack, newExpr) when val != nil do
		IO.puts("val is not null checker")
		if Integer.parse(val) !== :error do
			IO.puts("Enter val not empty")
			IO.puts(val)
			newExpr =  newExpr ++ [val]
			emptyStr = to_string(list)
			if (emptyStr != "") do
				[head | tail] = list
				checker(head, tail, stack, newExpr)
			else
				checker("","",stack, newExpr)
			end
		else
			IO.puts("Operator")
			[head | tail] = stack
			x = precedence(val)
			y = precedence(head)
			if x > y do
				IO.puts("x > y")
				stack = [val | stack]
				[head | tail] = list
				checker(head, tail, stack, newExpr)
			else
				IO.puts("x !> y")
				stack = [head | tail]
				pop(val, list,stack, newExpr)
				checker(val, list, stack, newExpr)
			end
		end
	end
	
	def pop(val, list, stack, newExpr) do
		IO.puts("Pop")
		if (stack === nil) do
			IO.puts("stack is empty")
			checker(val, list, stack, newExpr)
		else
			IO.puts("Stack is not empty")
			[head | tail] = stack
			x = precedence(head)
			y = precedence(val)
			if x >= y do
				IO.puts("x >= y")
				newExpr = newExpr ++ [head]
				empStr = to_string(tail)
				if (empStr != "") do
					IO.puts("tail not  empty")
					pop(val, list, stack, newExpr)
				else
					IO.puts("tail is empty")
					checker(val, list, nil, newExpr)
				end
			end
		end
	end

	def precedence(val) do
		cond do
			val === "+" -> 1
			val === "-" -> 1
			val === "*" -> 2
			val === "//"-> 2
		end
	end
end
