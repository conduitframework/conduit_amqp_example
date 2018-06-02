# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :conduit_amqp_example, ConduitAmqpExample.Broker,
  adapter: ConduitAMQP,
  url: System.get_env("RABBIT_URL") || "amqp://guest:guest@localhost:5672"

# Stop lager redirecting :error_logger messages
config :lager, :error_logger_redirect, false

# Stop lager removing Logger's :error_logger handler
config :lager, :error_logger_whitelist, [Logger.ErrorHandler]
