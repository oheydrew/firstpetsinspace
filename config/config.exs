# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :firstpetsinspace,
  ecto_repos: [Firstpetsinspace.Repo]

# Configures the endpoint
config :firstpetsinspace, FirstpetsinspaceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4ExCBTldhy2mIo0Vwq1LTrkCIZdk/N2YSEH/HzQ1vH1ShHP6ybeFRCiVia0SXwkl",
  render_errors: [view: FirstpetsinspaceWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Firstpetsinspace.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
