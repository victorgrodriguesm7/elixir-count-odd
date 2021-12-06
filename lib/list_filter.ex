defmodule ListFilter do
  def call(list) do
    integerList = filterInteger(list)

    oddList = filterOdd(integerList)

    length(oddList)
  end

  defp filterInteger(list) do
    Enum.filter(list,
      fn string ->
        case Integer.parse(string) do
          {_int, _rest} -> true
          :error -> false
        end
      end
    )
  end

  defp filterOdd(list) do
    Enum.filter(list, fn string -> rem(String.to_integer(string), 2) != 0 end )
  end
end
