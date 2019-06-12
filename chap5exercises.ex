# Write a function that takes three arguments.
# If the first two are zero, return “FizzBuzz.”
# If the first is zero, return “Fizz.”
# If the second is zero, return “Buzz.”
# Otherwise return the third argument.
# Do not use any language features that we haven’t
# yet covered in this book.


fizzy = fn
    0, 0, _ -> "FizzBuzz"
    0, _, _ -> "Fizz"
    _, 0, _ -> "Buzz"
    _, _, c -> c
end

fizzyWrap = fn n -> fizzy.(rem(n,3), rem(n,5), n) end

prefix = fn x -> (fn y -> "#{x}  #{y}" end) end

# Enum.map [1,2,3,4], fn x -> x + 2 end
Enum.map [1,2,3,4], &(&1 + 2)
# Enum.each [1,2,3,4], fn x -> IO.inspect x end
Enum.each [1,2,3,4], &IO.inspect/2
