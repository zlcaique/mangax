defmodule MangaxWeb.Api.UserController do
  use MangaxWeb, :controller

  alias Mangax.Users
  alias Mangax.Users.User

  def create(conn,%{"user" => user_params}) do
    with {:ok, %User{} = user} <- Users.create_user user_params do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.user_path(conn, :show, user))
      |> render("show.json-api", data: user)
    end
  end

  def show(conn, %{"id" => id}) do
    user = Users.get_user!(id)
    render(conn, "show.json-api", data: user)
  end
end
