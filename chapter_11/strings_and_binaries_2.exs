defmodule MyString do

  def anagram?(one, two) do
    unless (String.length(one) == String.length(two)) do
      false
    else
      chars = String.to_charlist one

      is_anagram?(chars, two)
    end
  end

  defp is_anagram?([], _), do: true
  defp is_anagram?([head | tail], string) do
    letter = Kernel.to_string [head]

    if String.contains? string, letter do
      is_anagram? tail, string
    else
      false
    end
  end

end

IO.inspect MyString.anagram?("amor", "roma")
IO.inspect MyString.anagram?("hola", "roma")
