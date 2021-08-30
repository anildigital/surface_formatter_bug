defmodule SurfaceFormatterBug.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      SurfaceFormatterBugWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: SurfaceFormatterBug.PubSub},
      # Start the Endpoint (http/https)
      SurfaceFormatterBugWeb.Endpoint
      # Start a worker by calling: SurfaceFormatterBug.Worker.start_link(arg)
      # {SurfaceFormatterBug.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SurfaceFormatterBug.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    SurfaceFormatterBugWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
