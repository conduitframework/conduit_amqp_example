defmodule ConduitAmqpExample.MessageSubscriber do
  use Conduit.Subscriber

  def process(message, _opts) do
    IO.inspect(message)

    message
  end
end
