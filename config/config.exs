# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :conduit_amqp_example, ConduitAmqpExample.Broker,
  adapter: ConduitAMQP,
  url: System.get_env("RABBIT_URL") || "amqp://guest:guest@localhost:6782"
