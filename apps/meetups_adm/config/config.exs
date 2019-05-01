# Since configuration is shared in umbrella projects, this file
# should only configure the :meetups_adm application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :meetups_adm,
  ecto_repos: [MeetupsAdm.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :meetups_adm, MeetupsAdm.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1XY7A+1nHlRMADzXxW3zKZ44wghMfbkay70Yt/yZSdyzH5aJlFwMZUsjJbdDhSXz",
  render_errors: [view: MeetupsAdm.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MeetupsAdm.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
