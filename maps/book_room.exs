defmodule HotelRoom do
    people = [
        %{ name: "Grumpy", height: 1.24 },
        %{ name: "Dave", height: 1.88 },
        %{ name: "Dopey", height: 1.32 },
        %{ name: "Shaquille", height: 2.16 },
        %{ name: "Sneezy", height: 1.28 }
    ]

    def book(%{name: name, height: height})
    when height > 1.9 do
        IO.puts "need long bed for #{name}"
    end

    def book(%{name: name, height: height})
    when height < 1.3 do
        IO.puts "need low shower controls for #{name}"
    end

    def book(person) do
        IO.puts "need regular sized bed for #{person.name}"
    end
end

