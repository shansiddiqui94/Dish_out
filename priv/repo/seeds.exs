# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     DishOut.Repo.insert!(%DishOut.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias DishOut.foods

Recipes.insert!(
    %{title: "Mac N Cheese", ingredients: "Elbow Pasta, Milk, Cheese, Heavy cream", summary: "Bring pasta to a boil for 10 mins, drain water, add milk, cream, and cheese in. Stir and allow to cool before consuming.", date: "Posted March 3, 2022"}
)