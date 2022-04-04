defmodule DishOut.FoodsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `DishOut.Foods` context.
  """

  @doc """
  Generate a food.
  """
  def food_fixture(attrs \\ %{}) do
    {:ok, food} =
      attrs
      |> Enum.into(%{
        date: 42,
        ingredients: "some ingredients",
        summary: "some summary",
        title: "some title"
      })
      |> DishOut.Foods.create_food()

    food
  end
end
