# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kyle,
  ecto_repos: [Kyle.Repo]

# Configures the endpoint
config :kyle, KyleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jwVeOoZCrZuHTDsq+Q8Ks0Z2WaPzRTf1sjJzHu+tGCTkxHS8Z3lSkImQvHYIcDPR",
  render_errors: [view: KyleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kyle.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
