defmodule Chop do

  def guess(number, range) do

    first..last = range

    if number == first or number == last do
      number
    else
      half = div(first + last, 2)

      IO.puts "Is it #{half}"

      if number in first..half do
        guess(number, first..half)
      else
        guess(number, half..last)
      end
    end
  end

end

IO.puts Chop.guess(273, 1..1000)
