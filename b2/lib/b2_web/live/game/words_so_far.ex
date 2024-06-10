defmodule B2Web.Game.WordsSoFar do
  use B2Web, :live_component

  def mount(socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div>
      In Words so far
    </div>
    """
  end
end
