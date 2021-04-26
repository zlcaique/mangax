# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mangax,
  ecto_repos: [Mangax.Repo]

# Configures the endpoint
config :mangax, MangaxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "R8ONE/fFcLvB57KWTUq9LXhEY9TOR06HVRDUrtUQJ1kdnD9gKTozNWkCuKdbtm1y",
  render_errors: [view: MangaxWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Mangax.PubSub,
  live_view: [signing_salt: "pl59CZHu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix, :format_encoders,
  "json-api": Poison

  # Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
