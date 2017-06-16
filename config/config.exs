# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :recippy,
  ecto_repos: [Recippy.Repo]

# Configures the endpoint
config :recippy, Recippy.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZNx3ZYqpgU/CpCFyEMLXxi73b4ALOgfPx7qUZSKe2lHbVjvVdc3g1J42WaBL5XIe",
  render_errors: [view: Recippy.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Recippy.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
