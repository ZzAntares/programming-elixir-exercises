defmodule MyList do

  def max([el]), do: el

  def max([head | tail]) do
    max_tail = max(tail)

    if head > max_tail do
      head
    else
      max_tail
    end
  end

end

IO.puts MyList.max([1, 2, 3, 2])
