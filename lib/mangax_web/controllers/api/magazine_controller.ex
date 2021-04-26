defmodule MangaxWeb.Api.MagazineController do
  use MangaxWeb, :controller

  alias Mangax.Magazines
  def index(conn,  _params) do
    magazines = Magazines.list_magazines
    render(conn, "index.json-api", data: magazines)
  end

  def create(conn,  _params) do
    magazines = Magazines.list_magazines
    render(conn, "index.json-api", data: magazines)
  end
end
