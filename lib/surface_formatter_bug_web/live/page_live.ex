defmodule SurfaceFormatterBugWeb.PageLive do
  # use SurfaceFormatterBugWeb, :live_view
  use Surface.LiveView

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, query: "", results: %{})}
  end

  @impl true
  def render(assigns) do
    ~F"""
    <h1> Hello World </h1>
    """
  end
end
