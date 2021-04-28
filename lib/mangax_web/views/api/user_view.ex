defmodule MangaxWeb.Api.UserView do
  use MangaxWeb, :view
  use JaSerializer.PhoenixView

  attributes [:email, :pass, :user]
end
