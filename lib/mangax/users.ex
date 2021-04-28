defmodule Mangax.Users do
  alias Mangax.Repo
  alias Mangax.Users.User

  def list_users do
    Repo.all(User)
  end

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert
  end

  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update
  end

  def delete_user(%User{} = user) do
    Repo.delete user
  end

  def get_user!(id), do: Repo.get!(User, id)
end
