defmodule Mangax.Repo.Migrations.CreateMagazine do
  use Ecto.Migration

  def change do
    create table(:magazine) do
      add :name, :string
      add :banner, :string
      add :logo, :string
      add :author, references(:users)
      add :publishing_company_id, references(:publishing_company)

      timestamps()
    end

  end
end
