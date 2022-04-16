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

alias DishOut.Foods.Food


recipes_data = [
    %{
    title: "Mac N Cheese", 
    ingredients: "Elbow Pasta, Milk, Cheese, Heavy cream", 
    summary: "Bring pasta to a boil for 10 mins, drain water, add milk, cream, and cheese in. Stir and allow to cool before consuming.", 
    date: "05/06/2002"
    },

    %{
    title: "Biryani", 
    ingredients: "Chicken, Rice, onions, Yogurt, various spices, clove, shan masala, tomato", 
    summary: "Bring Rice to a boil, next mix chicken with tomatoes Shan masala and spices, and make a tasty masala, drain rice water after boiling is complete, mix with masala and let it sit for a few minutes. Cool and consume", 
    date: "10/25/2019"
    },

    %{
    title: "chicken salad", 
    ingredients: "salad, dressing, chicken, fresh veggies as toppings", 
    summary: "chop chicken up, and mix in a large bowl with salad, add your dressing on top, and done", date: "11/12/1994" 
    },

    %{
    title: "sheet pan veggies", 
    ingredients: "Frozen or fresh veggies, olive oil, cilantro", 
    summary: "Put chopped veggies on a sheet pan, preheat oven to 115 degrees add olive oil on to veggies, cook for 15 minutes, remove from oven cool down and enjoy.", 
    date: "01/03/2001"
}
]
Enum.each(recipes_data, fn(data)->
    DishOut.Foods.create_food(data)
end  
)