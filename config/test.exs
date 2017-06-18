use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :recippy, Recippy.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :recippy, Recippy.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "recippy",
  password: "hacking-nasa123",
  database: "recippy_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
