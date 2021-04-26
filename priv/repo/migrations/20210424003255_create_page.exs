defmodule Mangax.Repo.Migrations.CreatePage do
  use Ecto.Migration

  def change do
    create table(:page) do
      add :name, :string
      add :banner, :string
      add :logo, :string
      add :chapter_id, references(:chapter)
      timestamps()
    end

  end
end
