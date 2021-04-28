defmodule Mangax.Magazines.Magazine do
  use Ecto.Schema
  import Ecto.Changeset

  alias Mangax.Users.User
  alias Mangax.PublishingCompanys.PublishingCompany

  schema "magazine" do
    field :name, :string
    field :banner, :string
    field :logo, :string
    belongs_to(:author, User)
    belongs_to(:publishing_company, PublishingCompany)


    timestamps()
  end

  @doc false
  def changeset(magazine, attrs) do
    magazine
    |> cast(attrs, [
      :name,
      :banner,
      :logo,
      :publishing_company_id,
      :author_id
    ])
    |> validate_required([:name, :banner, :logo, :author_id, :publishing_company_id])
    |> foreign_key_constraint(:publishing_company)
    |> foreign_key_constraint(:author)
  end
end
