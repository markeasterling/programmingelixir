defmodule DefaultParams do
    def func(p1, p2 \\ 123)

    def func(p1, p2) when is_list(p1) do
        IO.puts "you said #{p2} with a list"
    end

    def func(p1, p2) do
        IO.puts
    end
end
