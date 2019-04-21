# Since configuration is shared in umbrella projects, this file
# should only configure the :meetups_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :meetups_web,
  ecto_repos: [Meetups.Repo],
  generators: [context_app: :meetups]

# Configures the endpoint
config :meetups_web, MeetupsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "B9g9c4GVZXbv17x3xKObvEXwphScy6IEtaq1TCKfxfjLe3eFs0IYFWgGJC5UtN5X",
  render_errors: [view: MeetupsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MeetupsWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
