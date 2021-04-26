defmodule Mangax.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :pass, :string
    field :user, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:user, :email, :pass])
    |> validate_required([:user, :email, :pass])
  end
end
