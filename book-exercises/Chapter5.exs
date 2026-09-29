# Anonymous Function: EX1
list_concat = fn list1, list2 -> list1 ++ list2 end
IO.inspect(list_concat.([:a, :b], [:c, :d]))

sum = fn a, b, c -> a + b + c end
IO.inspect(sum.(1, 2, 3))

pair_tuple_to_list = fn {a, b} -> [a, b] end
IO.inspect(pair_tuple_to_list.({1234, 5678}))

# One Function, Multiple Bodies EX2 and 3
fizz_buzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

fizz_rem = fn
  n -> fizz_buzz.(rem(n, 3), rem(n, 5), n)
end

IO.inspect(fizz_buzz.(0, 0, 4))
IO.inspect(fizz_buzz.(0, 2, 4))
IO.inspect(fizz_buzz.(1, 0, 4))
IO.inspect(fizz_buzz.(1, 2, 4))

IO.puts(fizz_rem.(10))
IO.puts(fizz_rem.(11))
IO.puts(fizz_rem.(12))
IO.puts(fizz_rem.(13))
IO.puts(fizz_rem.(14))
IO.puts(fizz_rem.(15))
IO.puts(fizz_rem.(16))

# Function can return Function EX4
prefix = fn first -> fn second -> first <> " " <> second end end

IO.inspect(start = prefix.("Demilade"))
IO.inspect(start.("Onitilo"))

# & notation EX 5
add = Enum.map([1, 2, 3, 4], &(&1 + 2))
IO.inspect(add)

insp = Enum.each([1, 2, 3, 4], &IO.inspect(&1))
IO.inspect(insp)
