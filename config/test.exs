use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :imagexplain, Imagexplain.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :imagexplain, Imagexplain.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: System.get_env("MYSQL_USER") || "${MYSQL_USER}",
  password: System.get_env("MYSQL_PASSWORD") || "${MYSQL_PASSWORD}",
  database: System.get_env("MYSQL_DATABASE") || "${MYSQL_DATABASE}",
  hostname: System.get_env("DB_HOST") || "${DB_HOST}",
  pool: Ecto.Adapters.SQL.Sandbox
