defmodule Mangax.Magazines.Magazine do
  use Ecto.Schema
  import Ecto.Changeset

  alias Mangax.Users.User
  alias Mangax.PublishingCompanys.PublishingCompany

  schema "magazine" do
    field :name, :string
    field :banner, :string
    field :logo, :string
    belongs_to(:author, User, [foreign_key: :instance_type, references: :instance_type, define_field: false])
    belongs_to(:publishing_company, PublishingCompany)


    timestamps()
  end

  @doc false
  def changeset(magazine, attrs) do
    magazine
    |> cast(attrs, [:name, :banner, :logo, :author])
    |> validate_required([:name, :banner, :logo, :author, :publishing_company_id])
  end
end
