defmodule DishOut.Foods.Food do
  use Ecto.Schema
  import Ecto.Changeset

  schema "delish_foods" do
    field :date, :integer
    field :ingredients, :string
    field :summary, :string
    field :title, :string

    timestamps()
  end

  # alter table(:delish_foods) do 
  #   modify :content, :text
  # end
# The alter table I am increasing my char count to string over 255 for summary
  @doc false
  def changeset(food, attrs) do
    food
    |> cast(attrs, [:title, :ingredients, :summary, :date])
    |> validate_required([:title, :ingredients, :summary, :date])
    
  end
end
