defmodule MangaxWeb.Router do
  use MangaxWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :json_api do
    plug :accepts, ["json-api"]
    plug :fetch_session
    plug JaSerializer.Deserializer
  end

  scope "/", MangaxWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/api", MangaxWeb do
    pipe_through :json_api
    resources "/magazines", Api.MagazineController
    resources "/users", Api.UserController
    resources "/publishing_companys", Api.PublishingCompanyController
  end

  # Other scopes may use custom stacks.
  # scope "/api", MangaxWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: MangaxWeb.Telemetry
    end
  end
end
