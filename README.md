# ConduitAmqpExample

Example App that uses [Conduit](https://github.com/conduitframework/conduit) and [ConduitAMQP](https://github.com/conduitframework/conduit_amqp).

## Running

You'll need a RabbitMQ running locally. This project expects the default RabbitMQ user `guest` with password `guest` and
the default port `5672`. An easy way to do that is using docker, like so:

``` bash
docker run -it \
  -p 5672:5672 \
  -p 15672:15672 \
  --name rabbitmq \
  --rm \
  rabbitmq:3.6.2-management
```

You can run the project by doing:

``` bash
iex -S mix run
```

You should see logs mentioning that it has created the `message` queue at startup.

```
22:28:46.712 [info]  AMQP Adapter started!
22:28:46.723 [info]  Declaring queue message
```

Once you have an iex prompt, you can send a message by doing:

``` elixir
import Conduit.Message
alias Conduit.Message
alias ConduitSqsExampleQueue.Broker

message = put_body(%Message{}, %{"my" => "message"})

Broker.publish(message, :message)
```
