# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :imagexplain,
  ecto_repos: [Imagexplain.Repo]

# Configures the endpoint
config :imagexplain, Imagexplain.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hnzGpbHKaXPV5Ev1BKPgs0fVAj6run5aZ5Nth4FMQb8K86hlid7ZEYc5XV0l2te8",
  render_errors: [view: Imagexplain.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Imagexplain.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
