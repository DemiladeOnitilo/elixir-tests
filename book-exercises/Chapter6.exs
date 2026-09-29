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
