defmodule MangaxWeb.Api.PublishingCompanyController do
  use MangaxWeb, :controller

  alias Mangax.PublishingCompanys
  alias Mangax.PublishingCompanys.PublishingCompany

  def create(conn,%{"publishing_company" => publishing_company_params}) do
    with {:ok, %PublishingCompany{} = publishing_company} <- PublishingCompanys.create_publishing_company publishing_company_params do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.publishing_company_path(conn, :show, publishing_company))
      |> render("show.json-api", data: publishing_company)
    end
  end

  def show(conn, %{"id" => id}) do
    user = PublishingCompanys.get_publishing_company!(id)
    render(conn, "show.json-api", data: user)
  end
end
