# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :refinery,
  ecto_repos: [Refinery.Repo]

# Configures the endpoint
config :refinery, Refinery.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zDIId2aH4EcPMh/o+QDZuewl5HAwlden3DlaO3Kkk5RQcax0NF6NxUoYuLoRiI/K",
  render_errors: [view: Refinery.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Refinery.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
