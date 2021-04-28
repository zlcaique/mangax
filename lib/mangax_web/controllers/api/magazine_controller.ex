defmodule MangaxWeb.Api.MagazineController do
  use MangaxWeb, :controller

  alias Mangax.Magazines
  alias Mangax.Magazines.Magazine
  def index(conn,  _params) do
    magazines = Magazines.list_magazines
    render(conn, "index.json-api", data: magazines)
  end

  def create(conn,%{"magazine" => magazine_params}) do
    with {:ok, %Magazine{} = magazine} <- Magazines.create_magazine magazine_params do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.magazine_path(conn, :show, magazine))
      |> render("show.json-api", data: magazine)
    end
  end

  def show(conn, %{"id" => id}) do
    magazine = Magazines.get_magazine!(id)
    render(conn, "show.json-api", data: magazine)
  end
end
