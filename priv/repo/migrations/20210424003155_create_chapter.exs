defmodule Mangax.Repo.Migrations.CreateChapter do
  use Ecto.Migration

  def change do
    create table(:chapter) do
      add :title, :string
      add :author, references(:users)
      add :illustrator, references(:users)
      add :magazine_id, references(:magazine)

      timestamps()
    end

  end
end
