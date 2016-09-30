prefix = fn prefix ->
  fn name ->
    IO.puts "#{prefix} #{name}"
  end
end

mr = prefix.("Mr.")
IO.puts mr.("Smith")

IO.puts prefix.("Elixir").("Rocks!")
