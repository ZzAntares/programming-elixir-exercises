defmodule MyString do

  def capitalize(sentence) do
    sentence
      |> String.split(". ")
      |> Enum.map(&String.capitalize &1)
      |> Enum.join(". ")
  end

end

IO.inspect MyString.capitalize("oh. a DOG. woof. ")
