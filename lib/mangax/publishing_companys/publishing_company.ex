defmodule Mangax.PublishingCompanys.PublishingCompany do
  use Ecto.Schema
  import Ecto.Changeset

  schema "publishing_company" do
    field :logo, :string
    field :name, :string
    field :social_media, :string

    timestamps()
  end

  @doc false
  def changeset(publishing_company, attrs) do
    publishing_company
    |> cast(attrs, [:name, :logo, :social_media])
    |> validate_required([:name, :logo, :social_media])
  end
end
