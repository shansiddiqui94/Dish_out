defmodule DishOut.Repo do
  use Ecto.Repo,
    otp_app: :dish_out,
    adapter: Ecto.Adapters.Postgres
end
