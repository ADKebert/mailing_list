# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mailing_list,
  ecto_repos: [MailingList.Repo]

# Configures the endpoint
config :mailing_list, MailingListWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DZqbSuEugCnjJPWrmsaC2GXOGAsW5SHpYK2XUwPJJPRJYvVAICeQTGBFpB12DEUm",
  render_errors: [view: MailingListWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MailingList.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
