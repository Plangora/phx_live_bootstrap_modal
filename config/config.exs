# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_site,
  ecto_repos: [LiveSite.Repo]

# Configures the endpoint
config :live_site, LiveSiteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JAD4gkXTSlHfAHRLfosFWooGYMTXN9H+QaaE6ScDXJpOta4Up1UeDK+MNCCNXkw6",
  render_errors: [view: LiveSiteWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveSite.PubSub,
  live_view: [signing_salt: "R5tb5nE2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
