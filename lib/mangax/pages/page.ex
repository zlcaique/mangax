defmodule Mangax.Pages.Page do
  use Ecto.Schema
  import Ecto.Changeset

  alias Mangax.Chapters.Chapter
  schema "page" do
    field :name, :string
    field :banner, :string
    field :logo, :string
    belongs_to(:chapter_id, Chapter)
    timestamps()
  end

  @doc false
  def changeset(page, attrs) do
    page
    |> cast(attrs, [])
    |> validate_required([])
  end
end
