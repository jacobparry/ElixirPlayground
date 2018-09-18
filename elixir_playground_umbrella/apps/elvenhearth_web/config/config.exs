# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elvenhearth_web,
  namespace: ElvenhearthWeb

# Configures the endpoint
config :elvenhearth_web, ElvenhearthWebWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PAuxT6N2A7/ThmiBdT3IiDA4rBnNOPiBTi/2lmC65Cvog6kytlqwZNwggSXKAR/f",
  render_errors: [view: ElvenhearthWebWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElvenhearthWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
