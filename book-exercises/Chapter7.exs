# #List and Recursion - Reducing a list to a single value EX1
defmodule MyList do
  def mapsum(list, func) do
    mapsum(list, func, 0)
  end

  def mapsum([], _func, sum), do: sum

  def mapsum([head | tail], func, sum) do
    mapsum(tail, func, sum + func.(head))
  end
end

# #EX2
defmodule Maximum do
  def maxi([head | tail]) do
    maxi(tail, head)
  end

  def maxi([], current_max), do: current_max

  def maxi([head | tail], current_max) when head > current_max do
    maxi(tail, head)
  end

  def maxi([head | tail], current_max) when current_max > head do
    maxi(tail, current_max)
  end
end

# #EX3
defmodule MyList2 do
  def caesar([], n) do
    []
  end

  def caesar([head | tail], n) when head + n > ?z do
    new_head = rem(head + n - ?a, 26) + ?a
    [new_head | caesar(tail, n)]
  end

  def caesar([head | tail], n) do
    new_head = head + n
    [new_head | caesar(tail, n)]
  end
end

# EX4
defmodule MyList3 do
  def span(from, to) do
    span(from, to, [])
  end

  def span(from, to, list) when from > to do
    list
  end

  def span(from, to, list) do
    span(from + 1, to, list ++ [from])
  end
end
