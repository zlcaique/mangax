defmodule Mangax.PublishingCompanys do
  alias Mangax.Repo
  alias Mangax.PublishingCompanys.PublishingCompany

  def list_publishing_company do
    Repo.all(PublishingCompany)
  end

  def create_publishing_company(attrs \\ %{}) do
    %PublishingCompany{}
    |> PublishingCompany.changeset(attrs)
    |> Repo.insert
  end

  def update_publishing_company(%PublishingCompany{} = publishing_company, attrs) do
    publishing_company
    |> PublishingCompany.changeset(attrs)
    |> Repo.update
  end

  def delete_publishing_company(%PublishingCompany{} = publishing_company) do
    Repo.delete publishing_company
  end

  def get_publishing_company!(id), do: Repo.get!(PublishingCompany, id)
end
