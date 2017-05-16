# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :elixir_with_love, ElixirWithLove.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DXcP5+D2W1NGtqhlshcCMG2ptRdWI5M6eNJSeMgH++WAmT6aAkZ3bEqYwoHa3CKt",
  render_errors: [view: ElixirWithLove.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirWithLove.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :template_engines,
  md: PhoenixMarkdown.Engine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
