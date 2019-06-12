defmodule Factorial do
    def of(0), do: 1
    def of(n) when is_integer(n) and n > 0 do
        n * of(n-1)
    end
    def of(n) when is_integer(n) and n < 0 do
        IO.puts "please provide a non-negative number"
    end
end
