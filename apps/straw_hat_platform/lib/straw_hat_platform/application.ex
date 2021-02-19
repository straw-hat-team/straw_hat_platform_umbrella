defmodule StrawHatPlatform.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      StrawHatPlatform.Infrastructure.Repo,
      {Phoenix.PubSub, name: StrawHatPlatform.Infrastructure.PubSub}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: StrawHatPlatform.Supervisor)
  end
end
