defmodule Backtrack do
  def sum_to_target([], _target), do: nil
  def sum_to_target([h | t], target) when h == target, do: [h]

  def sum_to_target([h | t], target) do
    case sum_to_target(t, target - h) do
      nil -> sum_to_target(t, target)  # backtrack
      result -> [h | result]
    end
  end
end

def ciclofor do
  for I
end

IO.inspect Backtrack.sum_to_target([3, 5, 7, 10], 15)
# Puede dar [5, 10] o [3, 5, 7] dependiendo del orden
