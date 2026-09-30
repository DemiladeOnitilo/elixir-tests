#List and Recursion - Reducing a list to a single value EX1
defmodule MyList do
    def mapsum(list, func) do
        mapsum(list, func, 0)
    end

    def mapsum([], func, sum), do: sum

    def mapsum([head | tail], func, sum) do
        mapsum(tail, func, sum + func.(head))
    end

end

#EX2

defmodule Maximum do
    def max(list) do
        max(list, )
    end

    def max([], current_max), do: current_max

    def max([head | tail], current_max) when head > current_max do
        max(tail, head)
    end

    def max([head | tail], current_max) when current_max > head do
        max(tail, current_max)
    end

end
