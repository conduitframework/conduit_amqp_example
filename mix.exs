defmodule ConduitAmqpExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :conduit_amqp_example,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ConduitAmqpExample.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:conduit, "~> 0.12.0"},
      {:conduit_amqp, "~> 0.6 and >= 0.6.1"},
      # The way deps are defined for amqp and amqp_client cause hex to not pick newest versions
      {:amqp, "~> 1.0 and >= 1.0.3"},
      {:amqp_client, "~> 3.7 and >= 3.7.5"},
      {:rabbit_common, "~> 3.7 and >= 3.7.5"},
    ]
  end
end
