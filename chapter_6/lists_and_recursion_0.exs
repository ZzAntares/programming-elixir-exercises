defmodule MyList do

  def sum([el]), do: el

  def sum([head | tail]) do
    head + sum(tail)
  end

end
