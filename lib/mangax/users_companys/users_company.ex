defmodule Mangax.UsersCompanys.UsersCompany do
  use Ecto.Schema
  import Ecto.Changeset

  alias Mangax.Users.User
  alias Mangax.PublishingCompanys.PublishingCompany
  schema "users_companys" do
    field :permission, :string
    belongs_to(:user_id, User)
    belongs_to(:publishing_company_id, PublishingCompany)

    timestamps()
  end

  @doc false
  def changeset(users_company, attrs) do
    users_company
    |> cast(attrs, [:permission])
    |> validate_required([:permission, :user_id, :publishing_company_id])
  end
end
