IO.puts "\nExcercise #2\n"
my_function = fn

  (0 , 0, _) -> "FizzBuzz"

  (0, _, _) -> "Fizz"

  (_, 0, _) -> "Buzz"

  (_, _, third) -> third

end

IO.puts my_function.(0, 0, "other")
IO.puts my_function.(0, "other", "more")
IO.puts my_function.("other", 0, "nanai")
IO.puts my_function.("other", "more", 5)

IO.puts "\nExcercise #3\n"

remando = fn
  (n) -> my_function.(rem(n, 3), rem(n, 5), n)
end

IO.puts remando.(10)
IO.puts remando.(11)
IO.puts remando.(12)
IO.puts remando.(13)
IO.puts remando.(14)
IO.puts remando.(15)
IO.puts remando.(16)
