# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_graphql_server,
  ecto_repos: [PhoenixGraphqlServer.Repo]

# Configures the endpoint
config :phoenix_graphql_server, PhoenixGraphqlServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6908ERA/Rly+NfVTzcG4mA+p8hVQL1JbzRZK0ktLNN3dsv6i5+n5Cmk+Xp8yH7QB",
  render_errors: [view: PhoenixGraphqlServerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixGraphqlServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
