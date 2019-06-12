defmodule Times do
    def double(n), do: n * 2

    def triple(n), do: n * 3

    def quadruple(n), do: double(n) * 2
end


defmodule sum do
    def of(0), do: 0
    def of(n), do n + of(n-1)
end

defmodule gcd do
    def of (0, y), do: y
    def of (x, 0), do: x
    def of (x, y), do: gcd(y, rem(x,y))
end
