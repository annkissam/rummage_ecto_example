defmodule RummageEctoExample do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(RummageEctoExample.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: RummageEctoExample.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
