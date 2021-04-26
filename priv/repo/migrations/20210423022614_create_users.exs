defmodule Mangax.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :user, :string
      add :email, :string
      add :pass, :string

      timestamps()
    end

  end
end
