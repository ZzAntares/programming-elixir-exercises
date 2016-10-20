defmodule MyString do

  def printable?(string) do

    Enum.all? string, fn ch ->
      ch >= 32 and ch <= 126
    end

  end

end

IO.inspect MyString.printable? 'hola'
IO.inspect MyString.printable? 'éóíú'
