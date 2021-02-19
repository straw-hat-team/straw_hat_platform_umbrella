# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :straw_hat_platform,
  ecto_repos: [StrawHatPlatform.Infrastructure.Repo]

config :straw_hat_platform_web,
  ecto_repos: [StrawHatPlatform.Infrastructure.Repo],
  generators: [context_app: :straw_hat_platform, binary_id: true]

# Configures the endpoint
config :straw_hat_platform_web, StrawHatPlatform.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2auQRhZclrcA/iGfJt1dyEUZaDjLDAttGVhtJF8KWwFTiW1HsWrsKxDl81yca7Hq",
  render_errors: [view: StrawHatPlatform.Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: StrawHatPlatform.Infrastructure.PubSub,
  live_view: [signing_salt: "pS1He3aE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
