defmodule MyList do

  def map([], _func) do [] end
  def map([ head | tail ], func) do
    [func.(head) | map(tail, func) ]
  end

  def sum(list, accumulator \\ 0)
  def sum([], accumulator) do accumulator end
  def sum([ head | tail ], accumulator) do
    sum(tail, head + accumulator)
  end
  # apply function to list, then add all list elements together
  def mapsum(list, func) do
    map(list, func)
    |> sum
  end

  # find max value in a list
  def biggest(list, bigboy \\ 0)
  def biggest([], bigboy) do bigboy end
  def biggest([ head | tail ], bigboy) do
    biggest(tail, max(head, bigboy))
  end

# little caesar's cipher
  def caesar([], _n) do [] end
  def caesar(list, n) do
    Enum.map(list, &(if &1 + n > 122, do: &1 + n - 26, else: &1 + n))
  end

  def span(from, to) do
    Enum.reduce from..to, [], fn(num, acc) ->
      acc ++ [num]
    end
  end

end
