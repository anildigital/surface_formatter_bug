defmodule SurfaceFormatterBugWeb.PageLive do
  use Surface.LiveView
  alias SurfaceFormatterBugWeb.TextInputNew

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, query: "", results: %{})}
  end

  @impl true
  def render(assigns) do
    ~F"""
    <TextInputNew />
    """
  end
end
