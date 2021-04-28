defmodule MangaxWeb.Api.PublishingCompanyView do
  use MangaxWeb, :view
  use JaSerializer.PhoenixView

  attributes [:logo, :name, :social_media]
end
