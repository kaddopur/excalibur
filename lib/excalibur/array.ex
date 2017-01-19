defmodule Excalibur.Array do
  @doc """
  Gets the element at index n of array. If n is negative, the nth element from the end is returned.

  ## Examples
      iex> Excalibur.Array.nth(['a', 'b', 'c', 'd'], 1)
      'b'
      iex> Excalibur.Array.nth(['a', 'b', 'c', 'd'], -2)
      'c'
  """
  def nth(array, n \\ 0)
  def nth(array, n) when is_list(array) and is_integer(n), do: Enum.at(array, n)
  def nth(_array, _n), do: nil
end