defmodule Mangax.Repo.Migrations.CreateMagazineTags do
  use Ecto.Migration

  def change do
    create table(:magazine_tags) do
      add :tag_id, references(:tags)
      add :magazine_id, references(:magazine)

      timestamps()
    end

  end
end
