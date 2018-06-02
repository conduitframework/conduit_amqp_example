defmodule ConduitAmqpExample.Broker do
  use Conduit.Broker, otp_app: :conduit_amqp_example

  configure do
    # queue "conduit_amqp_example.queue"
  end

  # pipeline :in_tracking do
  #   plug Conduit.Plug.CorrelationId
  #   plug Conduit.Plug.LogIncoming
  # end

  # pipeline :error_handling do
  #   plug Conduit.Plug.DeadLetter, broker: ConduitAmqpExample.Broker, publish_to: :error
  #   plug Conduit.Plug.Retry, attempts: 5
  # end

  # pipeline :deserialize do
  #   plug Conduit.Plug.Decode, content_encoding: "gzip"
  #   plug Conduit.Plug.Parse, content_type: "application/json"
  # end

  incoming ConduitAmqpExample do
    # subscribe :my_subscription, MySubscriber, from: "conduit_amqp_example.queue"
  end

  # pipeline :out_tracking do
  #   plug Conduit.Plug.CorrelationId
  #   plug Conduit.Plug.CreatedBy, app: "conduit_amqp_example"
  #   plug Conduit.Plug.CreatedAt
  #   plug Conduit.Plug.LogOutgoing
  # end

  # pipeline :serialize do
  #   plug Conduit.Plug.Format, content_type: "application/json"
  #   plug Conduit.Plug.Encode, content_encoding: "gzip"
  # end

  # pipeline :error_destination do
  #   plug :put_destination, &(&1.source <> ".error")
  # end

  outgoing do
    # pipe_through [:out_tracking, :serialize]

    # publish :my_event, to: "conduit_amqp_example.my_event"
  end

  # outgoing do
  #   pipe_through [:error_destination, :out_tracking, :serialize]

  #   publish :error, exchange: "amq.topic"
  # end

end
