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
  username: "dev",
  password: "123456",
  database: "myapp",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
