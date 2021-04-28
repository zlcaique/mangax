defmodule Mangax.Repo.Migrations.AlterMagazineTable do
  use Ecto.Migration

  def change do
    rename table("magazine"), :author, to: :author_id
  end
end
