defmodule MangaxWeb.Api.MagazineView do
  use MangaxWeb, :view
  use JaSerializer.PhoenixView

  attributes [:name, :banner, :author_id, :publishing_company_id]
end
