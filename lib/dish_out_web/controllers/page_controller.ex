defmodule DishOutWeb.PageController do
  use DishOutWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
