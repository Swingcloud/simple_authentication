# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :auth_ex,
  ecto_repos: [AuthEx.Repo]

# Configures the endpoint
config :auth_ex, AuthExWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u+3CvAxce0Nt6OeowZW7sW1Qo4Ld/7hDWOB65OBb4wdBXT3oqnicGgJvBpWnrzak",
  render_errors: [view: AuthExWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AuthEx.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :auth_ex, AuthEx.Auth.Guardian,
  issuser: "auth_ex",
  secret_key: "mWDNrxfadfMjSY5Ut4OXKcsth9mSJjs6cggkEDXrhoDhMjN37MTIMviw8sCXFkXS"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
