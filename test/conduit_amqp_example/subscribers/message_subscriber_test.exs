defmodule ConduitAmqpExample.MessageSubscriberTest do
  use ExUnit.Case
  use Conduit.Test
  import Conduit.Message
  alias Conduit.Message
  alias ConduitAmqpExample.MessageSubscriber

  describe "process/2" do
    test "returns acked message" do
      message =
        %Message{}
        |> put_body("foo")

      assert %Message{status: :ack} = MessageSubscriber.run(message)
    end
  end
end
