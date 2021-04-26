defmodule Mangax.Repo.Migrations.CreateUsersCompanys do
  use Ecto.Migration

  def change do
    create table(:users_companys) do
      add :permission, :string
      add :user_id, references(:users)
      add :publishing_company_id, references(:publishing_company)
      timestamps()
    end

  end
end
