defmodule Mangax.Chapters.Chapter do
  use Ecto.Schema
  import Ecto.Changeset

  alias Mangax.Users.User
  alias Mangax.Magazines.Magazine
  schema "chapter" do
    field :title, :string
    belongs_to(:author, User)
    belongs_to(:illustrator, User)
    belongs_to(:magazine_id, Magazine)
    timestamps()
  end

  @doc false
  def changeset(chapter, attrs) do
    chapter
    |> cast(attrs, [:title])
    |> validate_required([:title, :author, :magazine_id])
  end
end
