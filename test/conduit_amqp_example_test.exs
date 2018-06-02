defmodule ConduitAmqpExampleTest do
  use ExUnit.Case
  doctest ConduitAmqpExample

  test "greets the world" do
    assert ConduitAmqpExample.hello() == :world
  end
end
