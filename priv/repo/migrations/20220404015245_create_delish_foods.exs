defmodule DishOut.Repo.Migrations.CreateDelishFoods do
  use Ecto.Migration

  def change do
    create table(:delish_foods) do
      add :title, :string
      add :ingredients, :string
      add :summary, :string
      add :date, :integer

      timestamps()
    end
  end
end
