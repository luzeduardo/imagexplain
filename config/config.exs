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
  url: [host: System.get_env("DB_HOST") || "${DB_HOST}" ],
  secret_key_base: "tUKAhIPMuZfSh1F7CQwgv/na5U1j+XcTQYrggV3ZFnvvCI5qhpo5HqX0AYF4LtdE",
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
