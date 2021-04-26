defmodule Mangax.Repo.Migrations.CreatePublishingCompany do
  use Ecto.Migration

  def change do
    create table(:publishing_company) do
      add :name, :string
      add :logo, :string
      add :social_media, :string

      timestamps()
    end

  end
end
