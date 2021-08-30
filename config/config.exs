# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :surface_formatter_bug, SurfaceFormatterBugWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kvcQrV336rcOXOGaLzTX3J2u4+qnYdOah6lEOQU1tSbJPKcQF0N/W2bkjSbbdpqo",
  render_errors: [view: SurfaceFormatterBugWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SurfaceFormatterBug.PubSub,
  live_view: [signing_salt: "Y6yu2Wy9"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
