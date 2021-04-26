defmodule Mangax.MagazineTags.MagazineTags do
  use Ecto.Schema
  import Ecto.Changeset

  alias Mangax.Tags.Tag
  alias Mangax.Magazines.Magazine
  schema "magazine_tags" do
    belongs_to(:magazine_id, Magazine)
    belongs_to(:tag_id, Tag)

    timestamps()
  end

  @doc false
  def changeset(magazine_tags, attrs) do
    magazine_tags
    |> cast(attrs, [:tag_id, :magazine_id])
    |> validate_required([:tag_id, :magazine_id])
  end
end
