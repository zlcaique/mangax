defmodule Mangax.Magazines do
  alias Mangax.Repo
  alias Mangax.Magazines.Magazine

  def list_magazines do
    Repo.all(Magazine)
  end
end
