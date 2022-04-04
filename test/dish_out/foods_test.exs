defmodule DishOut.FoodsTest do
  use DishOut.DataCase

  alias DishOut.Foods

  describe "delish_foods" do
    alias DishOut.Foods.Food

    import DishOut.FoodsFixtures

    @invalid_attrs %{date: nil, ingredients: nil, summary: nil, title: nil}

    test "list_delish_foods/0 returns all delish_foods" do
      food = food_fixture()
      assert Foods.list_delish_foods() == [food]
    end

    test "get_food!/1 returns the food with given id" do
      food = food_fixture()
      assert Foods.get_food!(food.id) == food
    end

    test "create_food/1 with valid data creates a food" do
      valid_attrs = %{date: 42, ingredients: "some ingredients", summary: "some summary", title: "some title"}

      assert {:ok, %Food{} = food} = Foods.create_food(valid_attrs)
      assert food.date == 42
      assert food.ingredients == "some ingredients"
      assert food.summary == "some summary"
      assert food.title == "some title"
    end

    test "create_food/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Foods.create_food(@invalid_attrs)
    end

    test "update_food/2 with valid data updates the food" do
      food = food_fixture()
      update_attrs = %{date: 43, ingredients: "some updated ingredients", summary: "some updated summary", title: "some updated title"}

      assert {:ok, %Food{} = food} = Foods.update_food(food, update_attrs)
      assert food.date == 43
      assert food.ingredients == "some updated ingredients"
      assert food.summary == "some updated summary"
      assert food.title == "some updated title"
    end

    test "update_food/2 with invalid data returns error changeset" do
      food = food_fixture()
      assert {:error, %Ecto.Changeset{}} = Foods.update_food(food, @invalid_attrs)
      assert food == Foods.get_food!(food.id)
    end

    test "delete_food/1 deletes the food" do
      food = food_fixture()
      assert {:ok, %Food{}} = Foods.delete_food(food)
      assert_raise Ecto.NoResultsError, fn -> Foods.get_food!(food.id) end
    end

    test "change_food/1 returns a food changeset" do
      food = food_fixture()
      assert %Ecto.Changeset{} = Foods.change_food(food)
    end
  end
end
