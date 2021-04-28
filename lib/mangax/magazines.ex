defmodule Mangax.Magazines do
  alias Mangax.Repo
  alias Mangax.Magazines.Magazine

  def list_magazines do
    Repo.all(Magazine)
  end

  def create_magazine(attrs \\ %{}) do
    %Magazine{}
    |> Magazine.changeset(attrs)
    |> Repo.insert()
  end

  def update_magazine(%Magazine{} = magazine, attrs) do
    magazine
    |> Magazine.changeset(attrs)
    |> Repo.update
  end

  def delete_magazine(%Magazine{} = magazine) do
    Repo.delete magazine
  end

  def get_magazine!(id), do: Repo.get!(Magazine, id)
end
