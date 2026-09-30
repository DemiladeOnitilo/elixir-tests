#Module EX1,2,3
defmodule Times do
  def double(n) do
    n * 2
  end
  #EX1
  def triple(n) do
    n * 3
  end
  #EX3
   def quadruple(n) do
    double(n) * 2
   end
end

#Function Calls and Pattern Matching EX4
defmodule Recursion do
  def sum(1), do: 1
  def sum(n), do: n + sum(n-1)
end

defmodule GCDivisor do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end

#Default Parameters EX6
defmodule Chop do

  def guess(actual, low..high) do
    current_guess = div(low + high, 2)
    guess(actual, low..high, current_guess)
  end

  def guess(actual, low..high, current_guess) when actual == current_guess do
    IO.puts("Is it #{current_guess}")
    current_guess
  end

  def guess(actual, low..high, current_guess) when actual > current_guess do
    IO.puts("Is it #{current_guess}")
    new_guess = div((current_guess + 1) + high, 2)
    guess(actual, (current_guess + 1)..high, new_guess)
  end

  def guess(actual, low..high, current_guess) when actual < current_guess do
    IO.puts("Is it #{current_guess}")
    new_guess = div(low + (current_guess - 1), 2)
    guess(actual, low..(current_guess - 1), new_guess)
  end

end
