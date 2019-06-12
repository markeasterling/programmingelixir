defmodule Gcd do
    def of(x, 0), do: x
    def of(x, y), do: Integer.gcd(x, rem(x,y))
end
